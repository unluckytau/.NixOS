{ ... }:

{
	programs.noctalia.enable = true;
	xdg.configFile."noctalia/noctalia.toml".source = ../noctalia/noctalia.toml;
	xdg.configFile."noctalia/palettes/ember.json".source = ../noctalia/ember.json;
}
