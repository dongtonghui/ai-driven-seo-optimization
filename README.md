# AI-Driven SEO Optimization & Content Generation
AI 驱动的 SEO 优化与内容生成

> **EN**: A systematic SEO skill that fuses **Google Search Central's official guidelines** with **agentic content pipelines** to deliver end-to-end website optimization and structured, publish-ready content.  
> **CN**: 一个系统化的 SEO 技能，融合 **Google Search Central 官方指南** 与 **智能体内容流水线**，实现端到端网站优化与结构化、可发布的内容交付。

---

## 📋 Table of Contents / 目录

1. [Installation / 安装](#installation--安装)
2. [What Is This Skill? / 这是什么？](#what-is-this-skill--这是什么)
3. [When to Use / 触发条件](#when-to-use--触发条件)
4. [The 5-Pillar SEO System / 五大支柱 SEO 体系](#the-5-pillar-seo-system--五大支柱-seo-体系)
5. [Workflow / 工作流](#workflow--工作流)
6. [Examples / 使用示例](#examples--使用示例)
7. [Deliverables Structure / 交付物结构](#deliverables-structure--交付物结构)
8. [AI Content Compliance / AI 内容合规](#ai-content-compliance--ai-内容合规)
9. [Common Pitfalls / 常见陷阱](#common-pitfalls--常见陷阱)
10. [Quick Reference / 快速参考](#quick-reference--快速参考)

---

## Installation / 安装

### Command Line Installation / 命令行安装

**Prerequisites / 前提条件**: Git must be installed on your system.

**Step 1 — Clone the repository to your skills directory / 克隆仓库到技能目录**

```bash
# Default skills path for gstack / Kimi CLI (macOS/Linux)
# gstack / Kimi CLI 默认技能路径（macOS/Linux）
mkdir -p ~/.kimi/skills && cd ~/.kimi/skills

# Clone the repository / 克隆仓库
git clone https://github.com/dongtonghui/ai-driven-seo-optimization.git ai-driven-seo-optimization
```

> **Note / 注意**: If you installed your agent CLI with a different configuration, replace `~/.kimi/skills` with your actual skills directory path (e.g., `~/.config/agents/skills`).
> 如果你的智能体 CLI 使用了不同的配置，请将 `~/.kimi/skills` 替换为实际的技能目录路径（例如 `~/.config/agents/skills`）。

**Step 2 — Verify installation / 验证安装**

```bash
ls ~/.kimi/skills/ai-driven-seo-optimization/SKILL.md
# Expected output / 期望输出: ~/.kimi/skills/ai-driven-seo-optimization/SKILL.md
```

**Step 3 — Restart or reload your agent CLI / 重启或重新加载智能体 CLI**

After installation, restart your agent session or run the reload command so the new skill is recognized:

```bash
# For gstack / Kimi CLI — skills are auto-detected on next command
# gstack / Kimi CLI — 技能会在下一次命令时自动检测
```

**Updating / 更新**

To update to the latest version:

```bash
cd ~/.kimi/skills/ai-driven-seo-optimization && git pull origin main
```

**Uninstalling / 卸载**

```bash
rm -rf ~/.kimi/skills/ai-driven-seo-optimization
```

---

## What Is This Skill? / 这是什么？

**EN**: This skill is a comprehensive, opinionated workflow for improving search rankings and organic traffic. It combines two authoritative sources into one actionable system:

- **Google Search Central** — E-E-A-T principles, people-first content standards, technical SEO fundamentals, and generative-AI compliance guidance.
- **QuickCreator Agentic Pipeline** — Topic intelligence → deep research → structured outline → knowledge-base writing → EEAT optimization → contextual conversion.

**The golden rule**: Content must be created to benefit people, not to manipulate search rankings. AI is a tool for research, structure, and scale — originality, accuracy, and human value are mandatory.

**CN**: 本技能是一套完整且经过验证的、用于提升搜索排名与自然流量的工作流。它将两大权威来源整合为一个可落地执行的系统：

- **Google Search Central** — E-E-A-T 原则、以人为本的内容标准、技术 SEO 基础，以及生成式 AI 合规指引。
- **QuickCreator 智能体流水线** — 主题洞察 → 深度研究 → 结构化大纲 → 知识库写作 → EEAT 优化 → 情境化转化。

**黄金法则**：内容必须为人而生，而非为操纵排名而造。AI 是研究、结构与规模化工具，但原创性、准确性与人类价值缺一不可。

---

## When to Use / 触发条件

**EN**: Trigger this skill when a user:
- Requests SEO optimization for an existing website
- Asks to create SEO content or blog posts
- Needs to improve search rankings or organic traffic
- Wants to generate a reusable SEO standard operating procedure (SOP)

**CN**: 当用户出现以下需求时触发本技能：
- 请求对现有网站进行 SEO 优化
- 要求创作 SEO 内容或博客文章
- 需要提升搜索排名或自然流量
- 希望生成一套可复用的 SEO 标准作业程序（SOP）

---

## The 5-Pillar SEO System / 五大支柱 SEO 体系

**EN**: The optimization framework built on Google principles and agentic mechanisms.

**CN**: 基于 Google 原则与智能体机制构建的优化框架。

| Pillar / 支柱 | Principle / 原则 | Mechanism / 机制 | Key Actions / 关键动作 |
|--------|------------------|------------------------|-------------|
| **P1: Topical Authority / 主题权威** | Helpful, comprehensive, original content | Topic Strategy Agent (semantic clusters, buyer-journey mapping) | Build topic matrices, cover sub-questions, create internal linking architecture |
| **P2: Content Quality (EEAT) / 内容质量** | Experience, Expertise, Authoritativeness, Trust | Content Optimization Agent (EEAT + Main Content Quality scoring) | Add author bios, real examples, source citations, methodology disclosures |
| **P3: Technical Foundation / 技术基础** | Crawlability, structured data, performance | SEO metadata & schema automation | Optimize titles, descriptions, alt text, URLs, schema markup, Core Web Vitals |
| **P4: Intent Alignment / 意图对齐** | People-first, answer-ready content | ICP-based research & SERP/PAA analysis | Match content to search intent (Informational, Commercial, Transactional) |
| **P5: Conversion Layer / 转化层** | Great page experience, clear next steps | Conversion Agent (context-aware CTAs) | Embed natural CTAs by journey stage, track lead attribution |

---

## Workflow / 工作流

### Phase 0 — Site Audit & Baseline / 网站审计与基线
**EN**: Before creating anything new, understand what you have.
**CN**: 在创建新内容之前，先了解现有资产。

1. Run a **technical SEO scan** (TTFB, LCP, CLS, total requests, HTML size).
2. Build a **content inventory** — identify thin content (`<300` words), duplicate titles, missing meta descriptions.
3. Perform **competitor gap analysis** — analyze 3–5 competitors ranking for target keywords.

---

### Phase 1 — Topic Intelligence & Strategy / 主题洞察与策略
**EN**: Build a decision-aware content architecture, not a flat keyword list.
**CN**: 构建面向决策的内容架构，而非扁平的关键词列表。

1. Define 3–5 core product/service pillars.
2. Extract real user questions from SERP "People Also Ask" and related searches.
3. Categorize topics by buyer-journey stage: **Awareness (TOFU) → Consideration (MOFU) → Purchase (BOFU)**.
4. Build a **Topic Matrix** that cross-references personas with journey stages.
5. Perform semantic expansion: for each core topic, fan out 5–10 sub-questions.

**Deliverable / 交付物**: `02-keyword-research/topic-matrix.md`

---

### Phase 2 — Content Creation (Agentic Writing Pipeline) / 内容创作
**EN**: Produce original, researched, SEO-optimized content that passes Google's helpful-content standards.
**CN**: 产出原创、经过研究、SEO 优化且符合 Google 有用内容标准的内容。

| Step / 步骤 | Action / 动作 |
|------|--------|
| **Deep Research / 深度研究** | Define ICP, analyze SERP top-3 results, gather authoritative sources |
| **Outline / 大纲** | Create a unique angle tied to the business; structure H2s/H3s; plan internal links |
| **Writing with Knowledge Base / 知识库写作** | Reference private docs, case studies, internal guides; include real-world examples and expert quotes |
| **SEO Packaging / SEO 包装** | Optimize title (50–60 chars), meta description (120–160 chars), URL slug, H1, alt text, internal links, and schema |

**Deliverable / 交付物**: `03-content-optimization/article-drafts/`

---

### Phase 3 — EEAT & Quality Optimization / EEAT 与质量优化
**EN**: Ensure every draft demonstrates credibility and originality.
**CN**: 确保每篇草稿都体现可信度与原创性。

**EEAT Checklist / EEAT 检查清单:**
- [ ] **Experience / 经验** — real-world insight, case studies, or first-hand data
- [ ] **Expertise / 专业度** — subject-matter depth beyond surface-level explanations
- [ ] **Authoritativeness / 权威性** — clear author byline, bio, and credentials
- [ ] **Trust / 可信度** — sources cited; disclosures (affiliates, AI use) transparent

**Main Content Quality Checklist / 主要内容质量检查清单:**
- [ ] **Originality / 原创性** — unique perspective or new analysis
- [ ] **Accuracy / 准确性** — facts precise and supported by credible sources
- [ ] **Effort & Depth / 深度与投入** — comprehensive (typically 800–2500 words for pillar content)
- [ ] **Clarity & Structure / 清晰与结构** — logical headings, scannable, lists and tables used

**Deliverable / 交付物**: `03-content-optimization/eeat-review-checklist.md`

---

### Phase 4 — Technical On-Page Optimization / 技术层面优化
**EN**: Make content discoverable and properly rendered by search engines.
**CN**: 让内容可被搜索引擎发现并正确渲染。

1. **Title & Meta / 标题与元数据** — Title 50–60 chars, Meta Description 120–160 chars, OG/Twitter Cards filled
2. **Headings / 标题层级** — Exactly one H1; H2/H3 form logical hierarchy
3. **Images / 图片** — Descriptive alt text (>95% coverage), descriptive file names, WebP compression
4. **Links / 链接** — Canonical tag present, descriptive anchor text, no broken outbound links
5. **Structured Data / 结构化数据** — JSON-LD validated; Article/Product/FAQ schema as appropriate
6. **Mobile & Performance / 移动端与性能** — Pass mobile-friendly test; LCP `<2.5s`, CLS `<0.1`, TTFB `<800ms`

**Deliverable / 交付物**: `04-technical-fixes/on-page-seo-checklist.md`

---

### Phase 5 — Conversion Optimization / 转化优化
**EN**: Turn traffic into measurable business outcomes.
**CN**: 将流量转化为可衡量的业务成果。

| Stage / 阶段 | CTA Type / 类型 | Examples / 示例 |
|-------|----------|----------|
| **TOFU (Awareness / 认知)** | Soft / 软性 | Subscribe, download guide, read related article |
| **MOFU (Consideration / 考虑)** | Medium / 中性 | Compare solutions, watch demo, request consultation |
| **BOFU (Purchase / 购买)** | Hard / 硬性 | Get quote, free trial, contact sales |

**Deliverable / 交付物**: `05-backlinks-outreach/conversion-map.md`

---

### Phase 6 — Automated Execution on WordPress + Elementor / WordPress 自动化执行
**EN**: Apply SEO fixes directly on the live site without manual GUI clicking for every page.
**CN**: 直接在活站点上应用 SEO 修复，无需为每个页面手动点击 GUI。

**Core principles / 核心原则:**
1. Authenticate first via `/wp-login.php`, then navigate to `/wp-admin/`.
2. Extract a fresh `X-WP-Nonce` from the authenticated page.
3. Prefer **WordPress REST API** for bulk text/meta updates.
4. Use **Elementor's internal JS API** (`window.elementor.elementsModel`) for layout-level changes.
5. Verify after saving — reload the live page and re-run the audit.

> **Critical / 重要提醒**: Bulk DOM edits inside `#elementor-preview-iframe` may look correct in the preview but will **not** sync to Elementor's `_elementor_data` JSON. Only edits through `elementsModel` persist reliably.
> 批量修改 `#elementor-preview-iframe` 内的 DOM 在预览中看起来正确，但**不会**同步到 Elementor 的 `_elementor_data` JSON。只有通过 `elementsModel` 的修改才能可靠持久化。

See `SKILL.md` for full code examples covering REST API, Elementor JS API, and widget blocks.

---

## Examples / 使用示例

### Example 1: Starting an SEO Project from Scratch / 示例 1：从零启动 SEO 项目

**Scenario / 场景**: You are given a WordPress site selling EV charging stations. The site has 12 pages, thin content, no blog, and ranks on page 3 for key terms.

**Step-by-step / 操作步骤**:

```
1. Phase 0 — Audit
   - Run technical SEO scan → LCP 4.2s, CLS 0.18, 6 pages < 300 words
   - Competitor gap analysis → competitors have 40+ blog posts covering "EV charging guide"

2. Phase 1 — Topic Strategy
   - Core pillars: AC Charging, DC Fast Charging, Fleet Solutions, Home Charging
   - Build Topic Matrix with 25 topics across TOFU/MOFU/BOFU
   - Prioritize underrepresented BOFU content (pricing, comparisons)

3. Phase 2 — Content Creation
   - Write 3 pillar articles (2000+ words each) with internal links to product pages
   - Include real case study data from client portfolio

4. Phase 3 — EEAT Review
   - Add author bio (electrical engineer with 10+ years experience)
   - Cite sources: IEEE papers, DOE reports, manufacturer datasheets
   - Flag and remove generic AI intro paragraphs

5. Phase 4 — Technical Optimization
   - Batch-update Yoast focus keywords and meta descriptions via REST API
   - Compress images to WebP, add alt text
   - Implement Product and FAQ schema

6. Phase 5 — Conversion
   - TOFU articles → "Download EV Charging Buyer's Guide"
   - BOFU product pages → "Request a Quote" + UTM tracking

7. Phase 6 — Execution
   - Use injected JavaScript to batch-update 12 pages via WordPress REST API
   - Verify changes in incognito mode, clear CDN cache
```

---

### Example 2: Using the Topic Matrix / 示例 2：使用主题矩阵

**EN**: The Topic Matrix is the central planning document that maps content to buyer journey stages.
**CN**: 主题矩阵是将内容映射到买家旅程阶段的核心规划文档。

```markdown
### Topic Matrix Template / 主题矩阵模板
| Core Topic / 核心主题 | Sub-Topic / 子主题 | Journey Stage / 阶段 | Target Keyword / 目标关键词 | Search Intent / 搜索意图 | Priority / 优先级 | Internal Links To / 内链指向 |
|------------|-----------|---------------|----------------|---------------|----------|-------------------|
| AC Charging | Wall-mounted vs pedestal | MOFU | wall mounted ac charging station | Commercial | High | /products/feva12021d |
| DC Fast Charging | Fleet operator guide | BOFU | dc fast charger for fleet | Transactional | High | /contact-sales |
| Home Charging | Installation safety tips | TOFU | ev charger installation safety | Informational | Medium | /products/home-series |
```

---

### Example 3: Batch-Updating Yoast SEO Meta via REST API / 示例 3：通过 REST API 批量更新 Yoast SEO 元数据

```javascript
// Step 1: Authenticate and extract nonce from /wp-admin/
// 步骤 1：在 /wp-admin/ 页面登录并提取 nonce
const nonce = window.wpApiSettings?.nonce ||
  document.querySelector('script#wp-api-request-js')?.innerText?.match(/"nonce":"([^"]+)"/)?.[1];

// Step 2: Define updates
// 步骤 2：定义更新内容
const updates = [
  { id: 123, type: 'pages', focuskw: 'EV charging station', metadesc: 'High-quality EV charging stations for commercial and residential use.' },
  { id: 124, type: 'pages', focuskw: 'DC fast charger', metadesc: 'Reliable DC fast chargers designed for fleet operators.' },
];

// Step 3: Execute batch update
// 步骤 3：执行批量更新
(async () => {
  for (const item of updates) {
    const res = await fetch(`/wp-json/wp/v2/${item.type}/${item.id}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', 'X-WP-Nonce': nonce },
      body: JSON.stringify({
        meta: {
          _yoast_wpseo_focuskw: item.focuskw,
          _yoast_wpseo_metadesc: item.metadesc
        }
      })
    });
    console.log(`Updated ${item.id}:`, res.status === 200 ? 'OK' : 'FAILED');
  }
})();
```

---

### Example 4: Fixing Elementor Image Alt Text / 示例 4：修复 Elementor 图片 Alt 文本

```javascript
// Traverse Elementor's Backbone model tree
// 遍历 Elementor 的 Backbone 模型树
function walk(model, callback) {
  const attrs = model.attributes || {};
  callback({ id: attrs.id, widgetType: attrs.widgetType || attrs.elType, settings: attrs.settings });
  if (attrs.elements?.models?.length) attrs.elements.models.forEach(m => walk(m, callback));
}

walk(window.elementor.elementsModel, ({ widgetType, settings }) => {
  if (widgetType === 'image' && settings) {
    const img = settings.get('image') || {};
    img.alt = 'Descriptive alt text for accessibility and SEO';
    settings.set('image', { ...img });
  }
  if (widgetType === 'image-box' && settings) {
    const img = settings.get('image') || {};
    const alt = 'Descriptive alt text for image box widget';
    img.alt = alt;
    settings.set('image', { ...img });
    settings.set('alt_text', alt); // Required for frontend output
  }
});

window.elementor.saver.saveEditor({ status: 'publish' });
```

---

### Example 5: EEAT Review Checklist in Action / 示例 5：EEAT 审查清单实战

**Before / 修改前**:
```
Title: EV Charging Station
Author: (none)
Content: 180 words of generic description with no sources.
CTA: Buy now!
```

**After / 修改后**:
```
Title: How to Choose the Right EV Charging Station for Commercial Properties
Author: Sarah Chen, PE — Licensed Electrical Engineer, 12 years in EV infrastructure
Content: 2,400 words with:
  - Real installation case study from a 50-unit apartment complex
  - Comparison table of NEMA 14-50 vs hardwired Level 2
  - Citations to NEC 2023 code and DOE Alternative Fuels Data Center
  - Original photography of installed units
CTA: Download the Commercial EV Charging Planning Guide (TOFU)
```

---

## Deliverables Structure / 交付物结构

**EN**: For every SEO engagement, store outputs in this standardized structure.
**CN**: 每个 SEO 项目均按以下标准化结构存放交付物。

```
seo-engagement/
├── 01-audit-reports/
│   ├── technical-seo-audit-<date>.md
│   └── competitor-gap-analysis.md
├── 02-keyword-research/
│   ├── topic-matrix.md
│   └── keyword-opportunities.md
├── 03-content-optimization/
│   ├── article-drafts/
│   │   ├── <slug>.md
│   │   └── ...
│   ├── eeat-review-checklist.md
│   └── content-calendar.md
├── 04-technical-fixes/
│   ├── on-page-seo-checklist.md
│   ├── schema-implementations.json
│   └── performance-baseline.md
├── 05-backlinks-outreach/
│   ├── conversion-map.md
│   └── outreach-targets.md
└── 06-deliverables/
    └── seo-strategy-summary-<date>.md
```

---

## AI Content Compliance / AI 内容合规

**EN**: When using AI to generate or assist content:

1. **Accuracy First** — Fact-check all AI-generated claims. Hallucinations destroy trust and rankings.
2. **Value Addition** — AI should structure and research; human expertise should add unique insights, examples, and judgments.
3. **Transparency** — Disclose AI use where appropriate (especially in YMYL niches).
4. **Avoid Scaled Content Abuse** — Do not mass-produce low-value pages. Every page must serve a distinct user need.
5. **Metadata Quality** — AI-generated titles, descriptions, and alt text must be accurate and relevant.

**CN**: 使用 AI 生成或辅助内容时：

1. **准确性优先** — 事实核查所有 AI 生成的声明。幻觉会摧毁信任与排名。
2. **价值增益** — AI 负责结构与研究；人类专家负责添加独特见解、案例与判断。
3. **透明披露** — 在适当场景（尤其是 YMYL 领域）披露 AI 的使用。
4. **避免规模化内容滥用** — 不要批量生产低价值页面。每个页面必须服务于一个独特的用户需求。
5. **元数据质量** — AI 生成的标题、描述和 alt 文本必须准确且相关。

---

## Common Pitfalls / 常见陷阱

| Pitfall / 陷阱 | Why It Matters / 影响 | How to Avoid / 规避方法 |
|---------|---------------|--------------|
| **Topic islands / 主题孤岛** | One-off posts without internal linking clusters weaken topical authority | Always build topic matrices and link related content |
| **AI-first, human-second / AI 优先、人类次之** | Raw AI output lacks originality and depth | Let AI handle research/structure; always add expert review |
| **Ignoring EEAT signals / 忽视 EEAT 信号** | Anonymous content without sources underperforms in competitive SERPs | Add author bios, citations, and methodology disclosures |
| **Skipping baseline metrics / 跳过基线指标** | Without before/after data, you cannot prove ROI | Capture TTFB, LCP, CLS, and rankings before any changes |
| **CTA mismatch / CTA 不匹配** | Asking for a demo in an awareness article creates friction | Match CTA intensity to journey stage and intent |
| **Elementor iframe DOM edits / Elementor iframe DOM 编辑** | Changes look correct but do not persist | Use `window.elementor.elementsModel` or REST API |
| **Nonce expiration / Nonce 过期** | `X-WP-Nonce` expires on page reload or timeout | Re-extract from an active `/wp-admin/` page if 403 occurs |
| **Global templates hide images / 全局模板隐藏图片** | Images on frontend may not be in the current page's model | Edit via *Elementor > Templates* or *Theme Builder* |
| **Yoast React settings / Yoast React 设置** | DOM mutations on React-managed inputs do not persist | Use actual browser interactions or `wp-cli` |

---

## Quick Reference / 快速参考

**EN**: Before publishing any page, ask:

- Does the content provide original information, reporting, research, or analysis?
- Does it provide a substantial, complete, or comprehensive description of the topic?
- Does it provide insightful analysis or interesting information that is beyond the obvious?
- Does the main heading or page title provide a descriptive, helpful summary of the content?
- Would you expect to see this content in or referenced by a printed magazine, encyclopedia, or book?

If the answer to any of these is **no**, revise before publishing.

**CN**: 发布任何页面前，先问自己：

- 内容是否提供了原创信息、报道、研究或分析？
- 内容是否对主题进行了实质性、完整或全面的描述？
- 内容是否提供了超越显而易见之外的深刻分析或有趣信息？
- 主标题或页面标题是否提供了描述性、有帮助的内容摘要？
- 你是否会在印刷杂志、百科全书或书籍中看到或引用此内容？

如果任一答案为**否**，请在发布前修改。

---

## License / 许可

**EN**: This skill is provided as a reusable, modular SEO workflow for AI agent systems. Adapt the deliverables structure and code snippets to fit your project or client needs.

**CN**: 本技能作为可复用、模块化的 SEO 工作流提供给 AI 智能体系统使用。请根据项目或客户需求调整交付物结构与代码片段。
