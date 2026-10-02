{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd 'uwsm start hyprland-uwsm.desktop'";
      user = "greeter";
    };
  };

	environment.sessionVariables = {
		NIXOS_OZONE_WL = "1";
		XDG_CURRENT_DESKTOP = "Hyprland";
		XDG_SESSION_TYPE = "wayland";
		XDG_SESSION_DESKTOP = "Hyprland";	
		__GLX_VENDOR_LIBRARY_NAME = "nvidia";
		LIBVA_DRIVER_NAME = "nvidia";
	};

	xdg.portal = {
		enable = true;
		extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
	};

	programs.hyprland = { enable = true; xwayland.enable = true; withUWSM = true; };
	programs.hyprlock.enable = true;
	
	environment.systemPackages = with pkgs; [
		hyprpolkitagent 
		swayimg
		hyprshot 
		kdePackages.dolphin 
		udiskie 
	];
}
