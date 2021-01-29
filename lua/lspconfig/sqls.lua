local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local root_pattern = util.root_pattern(".git", "config.yml")

configs.sqls = {
  default_config = {
    cmd = {"sqls"};
    filetypes = {"sql", "mysql"};
    root_dir = function(fname)
      return root_pattern(fname) or vim.loop.os_homedir()
    end;
    settings = {};
  };
  docs = {
    description = [[
https://github.com/lighttiger2505/sqls

```lua
require'lspconfig'.sqls.setup{
  cmd = {"path/to/command", "-config" "path/to/config.yml"};
  ...
}

This LSP can be installed via `go get github.com/lighttiger2505/sqls` Find further instructions on manual installation of the Language Server Protocol for SQL at [lighttiger2505/sqls](https://github.com/lighttiger2505/sqls)

```

<br>
    ]];
  };
}

-- vim:et ts=2 sw=2
