return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app  && npm install",
    ft = { "markdown" },
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    init = function()
      vim.g.madp_auto_start = 0
    end,
  },
}
