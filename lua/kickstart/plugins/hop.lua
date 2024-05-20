return {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    local hop = require 'hop'
    local directions = require('hop.hint').HintDirection

    hop.setup { keys = 'etovxqpdygfblzhckisuran' }

    vim.keymap.set('', 'mla', function()
      hop.hint_lines { direction = directions.AFTER_CURSOR }
    end, { desc = '[m]ove [l]ine [a]fter cursor' })

    vim.keymap.set('', 'mlb', function()
      hop.hint_lines { direction = directions.BEFORE_CURSOR }
    end, { desc = '[m]ove [l]ine [b]efore cursor' })

    vim.keymap.set('', 'mwa', function()
      hop.hint_words { direction = directions.AFTER_CURSOR, hint_offset = -1 }
    end, { desc = '[m]ove [w]ord [a]fter cursor' })

    vim.keymap.set('', 'mwb', function()
      hop.hint_words { direction = directions.BEFORE_CURSOR, hint_offset = 1 }
    end, { desc = '[m]ove [w]ord [b]efore cursor' })
  end,
}
