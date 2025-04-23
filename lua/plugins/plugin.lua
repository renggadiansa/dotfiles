return {
  -- Pasang NvimTree untuk sidebar file explorer

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- opsional, untuk ikon
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        -- Konfigurasi tambahan sesuai kebutuhan
        filesystem = {
          follow_current_file = true,
          hijack_netrw = true,
        },
      })
    end,
  },
  -- Pasang ToggleTerm untuk terminal dalam Neovim
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end,
  },

  -- Pasang Comment.nvim untuk fitur komentar
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  {
    "okuuva/auto-save.nvim",
    version = "^1.0.0",
    opts = {
      enabled = true,
      conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true,
      },
      write_all_buffers = false,
    },
    config = function()
      -- Menginisialisasi auto-save
      require("auto-save").setup({
        enabled = true,
        conditions = {
          exists = true,
          modifiable = true,
        },
        write_all_buffers = false,
      })

      -- Tambahkan timer untuk auto-save setiap 1 detik tanpa notifikasi
      local timer = vim.loop.new_timer()
      timer:start(
        3000,
        3000,
        vim.schedule_wrap(function()
          if vim.bo.modified then
            vim.cmd("silent! write") -- Menyimpan buffer yang dimodifikasi tanpa notifikasi
          end
        end)
      )
    end,
  },
}
