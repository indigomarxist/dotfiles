local present, truzen = pcall(require, "true-zen")

if not present then
  return
end

local options = {
  ui = {

    top = {
      showtabline = 0,
    },

    left = {
      number = true,
    },

    minimalist = {
      number = true,
    },
  },

  modes = {

    ataraxis = {
      left_padding = 3,
      right_padding = 3,
      top_padding = 1,
      bottom_padding = 0,
      auto_padding = false,
    },

    minimalist = {
      number = true,
    },
  },

  integrations = {
    kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
      enabled = false,
      font = "+3",
    },
  },
}

truzen.setup(options)
