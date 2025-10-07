return {
  {
    "stevearc/conform.nvim",
    -- CHANGED: Added event to lazy-load. Plugin only loads when you save a file.
    -- I've also uncommented this, as format-on-save is a very common goal.
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    -- This is correctly configured and essential, so no changes needed.
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "hadronized/hop.nvim",
    -- CHANGED: Added `keys` so Hop only loads when you press a key to use it.
    -- You will need to set your own keymaps to trigger it. This is an example.
    keys = {
      { "s", "<cmd>HopChar1<cr>", mode = { "n", "v" }, desc = "Hop to character" },
      { "S", "<cmd>HopWord<cr>", mode = { "n", "v" }, desc = "Hop to word" },
    },
    config = function()
      require("hop").setup({})
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    -- CHANGED: Loads the plugin only on the "InsertLeave" event, not on startup.
    event = "InsertLeave",
    config = function()
      require("auto-save").setup({
        enabled = true,
        -- The rest of your settings are preserved
        events = { "InsertLeave" },
        conditions = {
          exists = true,
          filename_is_not = {},
          filetype_is_not = {},
          modifiable = true,
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135,
      })
    end,
  },

  {
    "tpope/vim-surround",
    -- CHANGED: Added `keys` to load the plugin only on its first use.
    -- This is a simple way to catch all surround keymaps like `ys`, `ds`, `cs`.
    keys = { "ys", "ds", "cs" },
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    -- This was already correctly configured with `cmd` triggers. No changes.
    dependencies = {
      {
        "github/copilot.vim",
        cmd = "Copilot",
      },
      { "nvim-lua/plenary.nvim" },
    },
    cmd = "CopilotChat",
    config = function()
      require("CopilotChat").setup({})
    end,
  },

  {
    "yetone/avante.nvim",
    -- CHANGED: Plugin now loads only when you run the :Avante command.
    cmd = "Avante",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- Optional dependencies below
      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "stevearc/dressing.nvim",
      "folke/snacks.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
    config = function()
      require("avante").setup({})
    end,
  },
}
