-- nvidia variable.
  hl.env("GBM_BACKEND", "nvidia-drm")

-- bibata cursors.
  hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
  hl.env("XCURSOR_SIZE", "20")
  hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
  hl.env("HYPRCURSOR_SIZE", "20")

-- variables.
  local terminal    = "kitty"
  local fileManager = "dolphin"
  local mainMod = "SUPER"

-- imports.
  require("modules/default")
  require("modules/binds")
  require("modules/appearance")
  require("modules/layout")
