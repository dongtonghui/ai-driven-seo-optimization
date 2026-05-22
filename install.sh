#!/bin/bash
set -e

# AI-Driven SEO Optimization Skill Installer
# AI 驱动 SEO 优化技能安装脚本

REPO_URL="https://github.com/dongtonghui/ai-driven-seo-optimization.git"
SKILL_NAME="ai-driven-seo-optimization"

echo "🚀 Installing AI-Driven SEO Optimization Skill..."
echo "🚀 正在安装 AI-Driven SEO 优化技能..."

# Detect skills directory / 检测技能目录
if [ -n "$KIMI_SKILLS_PATH" ]; then
    SKILLS_DIR="$KIMI_SKILLS_PATH"
elif [ -d "$HOME/.kimi/skills" ]; then
    SKILLS_DIR="$HOME/.kimi/skills"
elif [ -d "$HOME/.config/agents/skills" ]; then
    SKILLS_DIR="$HOME/.config/agents/skills"
else
    SKILLS_DIR="$HOME/.kimi/skills"
    mkdir -p "$SKILLS_DIR"
fi

INSTALL_DIR="$SKILLS_DIR/$SKILL_NAME"

echo "📁 Skills directory: $SKILLS_DIR"
echo "📁 技能目录: $SKILLS_DIR"

# Check if already installed / 检查是否已安装
if [ -d "$INSTALL_DIR/.git" ]; then
    echo "⚠️  Skill already installed at $INSTALL_DIR"
    echo "⚠️  技能已安装于 $INSTALL_DIR"
    echo ""
    echo "To update, run: / 如需更新，请运行："
    echo "  cd $INSTALL_DIR && git pull origin main"
    exit 0
fi

# Clone repository / 克隆仓库
echo "⬇️  Cloning from GitHub..."
echo "⬇️  正在从 GitHub 克隆..."
git clone --depth 1 "$REPO_URL" "$INSTALL_DIR"

# Verify / 验证
if [ -f "$INSTALL_DIR/SKILL.md" ]; then
    echo ""
    echo "✅ Installation successful! / 安装成功！"
    echo "   Location / 位置: $INSTALL_DIR"
    echo "   Skill file / 技能文件: $INSTALL_DIR/SKILL.md"
    echo ""
    echo "📖 Next steps / 下一步："
    echo "   1. Restart your agent CLI session"
    echo "   2. The skill will be auto-detected on next use"
    echo ""
    echo "🔄 To update later / 后续更新："
    echo "   cd $INSTALL_DIR && git pull origin main"
    echo ""
    echo "🗑️  To uninstall / 卸载："
    echo "   rm -rf $INSTALL_DIR"
else
    echo "❌ Installation failed. Please check your network and try again."
    echo "❌ 安装失败，请检查网络后重试。"
    exit 1
fi
