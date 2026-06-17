# BreadcrumbList Schema & Visible UI Implementation

## Why It Matters

BreadcrumbList structured data powers **two features**:

1. **Search result breadcrumbs** — Google may show `Home > Products > DC Fast Chargers` in SERP snippets, improving CTR
2. **Visible page navigation** — helps users understand where they are and enables easy back-navigation

Both must be present for maximum SEO value.

---

## Common Mistake

**Omitting the full path.** The most widespread BreadcrumbList error is declaring only `Home` as the single breadcrumb item:

```json
// ❌ WRONG — adds zero SEO value
{
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://example.com" }
  ]
}
```

This is equivalent to not having BreadcrumbList at all. Every page must have the **complete path**.

---

## Correct JSON-LD Pattern

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://www.fbkpower.com"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Products",
      "item": "https://www.fbkpower.com/products"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Split-Type DC Fast Charging Cabinet",
      "item": "https://www.fbkpower.com/products/split-type-dc-cabinet"
    }
  ]
}
```

**Rules:**
- `position` starts at 1 and increments by 1
- The last item (current page) should have `item` pointing to itself, but can omit it for readability — Google still works correctly
- Only the **last item** should match the current page title/name
- Intermediate items link to their respective URL
- Use absolute URLs (include domain)

---

## Path Reference by Page Type

| Page | Breadcrumb Path |
|------|----------------|
| Home | `Home` |
| Category/List | `Home > {Category}` |
| Subcategory | `Home > {Category} > {Subcategory}` |
| Individual item | `Home > {Category} > {Subcategory} > {Item Name}` |
| Article | `Home > Blog > {Article Title}` |
| FAQ | `Home > FAQ` (or `Home > Support > FAQ` depending on site structure) |

---

## Astro Implementation Pattern

For Astro-based static sites, implement BreadcrumbList in two places:

### 1. Schema (JSON-LD) — in the Layout/SEO component

```astro
---
// SEO.astro accepts breadcrumbs as a prop
export interface BreadcrumbItem {
  name: string;
  url?: string;
}
---
<!-- Dynamic BreadcrumbList -->
{(() => {
  if (!breadcrumbs || breadcrumbs.length === 0) return null;
  const items = breadcrumbs.map((item, index) => ({
    "@type": "ListItem",
    "position": index + 1,
    "name": item.name,
    ...(item.url ? { "item": item.url.startsWith('http') ? item.url : `${siteUrl}${item.url}` } : {})
  }));
  return (
    <script type="application/ld+json" set:html={JSON.stringify({
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": items
    })} />
  );
})()}
```

### 2. Visible UI — Reusable BreadcrumbBar component

```astro
---
// BreadcrumbBar.astro
export interface Props {
  breadcrumbs: { name: string; url?: string }[];
}
const { breadcrumbs } = Astro.props;
if (!breadcrumbs || breadcrumbs.length <= 1) return;
const siteUrl = 'https://example.com';
---

<nav aria-label="Breadcrumb" class="flex items-center gap-1.5 text-xs font-semibold uppercase tracking-wider mb-3">
  {breadcrumbs.map((crumb, i) => {
    const isLast = i === breadcrumbs.length - 1;
    const href = crumb.url?.startsWith('http') ? crumb.url : `${siteUrl}${crumb.url}`;
    return (
      <div class="flex items-center gap-1.5">
        {i > 0 && (
          <svg class="w-3.5 h-3.5 text-brand-light/60" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M9 5l7 7-7 7" />
          </svg>
        )}
        {isLast ? (
          <span class="text-white/80">{crumb.name}</span>
        ) : href ? (
          <a href={href} class="text-brand-light/80 hover:text-brand-light transition-colors">{crumb.name}</a>
        ) : (
          <span class="text-brand-light/80">{crumb.name}</span>
        )}
      </div>
    );
  })}
</nav>
```

### 3. Usage in each Astro page

```astro
---
import BreadcrumbBar from '../components/BreadcrumbBar.astro';
---

<Layout
  title="..." description="..."
  breadcrumbs={[
    { name: 'Home', url: '/' },
    { name: 'Products', url: '/products' },
    { name: product.name }
  ]}
>
  <!-- Hero section -->
  <section class="relative py-24 text-white overflow-hidden bg-navy">
    <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
      <BreadcrumbBar breadcrumbs={[{name:'Home',url:'/'},{name:'Products',url:'/products'},{name:product.name}]} />
      <p class="section-label-dark mb-4">Product Category</p>
      <h1 class="text-4xl md:text-6xl text-white mb-6">{product.name}</h1>
    </div>
  </section>
</Layout>
```

---

## Key Principle

> BreadcrumbList Schema + visible UI = breadcrumb. Schema alone = invisible data. UI alone = missing SERP feature. **Both are required** for the full SEO benefit.
