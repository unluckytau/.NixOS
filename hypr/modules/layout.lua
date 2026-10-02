-- master tiling layout.
  hl.config({
    master = {
      new_status = "master",
    },
  })

-- per-device config.
  hl.device({
    name = "cust0001:00-06cb:cdad-touchpad", -- msi gs66 touchpad
    sensitivity = 0.15,
  })
