{ nixvim, pkgs, ... }:
{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    extraPlugins = with pkgs.vimPlugins; [
      vim-nix
    ];

		colorschemes.tokyonight.enable = true;
		clipboard.providers.xclip.enable = true;

		plugins = {
			lualine.enable = true;
			telescope.enable = true;
			oil.enable = true;
			treesitter.enable = true;
			luasnip.enable = true;
			
			nvim-tree.enable = true;
			surround.enable = true;
			bufferline.enable = true;
		};
	
		plugins.lsp = {
			enable = true;
	
			servers = {
				ruff.enable = true;
				hls.enable = true;
				ccls.enable = true;

				rust-analyzer.enable = true;
				rust-analyzer.installRustc = false;
				rust-analyzer.installCargo = false;				
				
				ruby-lsp.enable = true;
				clojure-lsp.enable = true;
				zls.enable = true;

				html.enable = true;
				cssls.enable = true;
				
				nushell.enable = true;
				bashls.enable = true;

				nixd.enable = true;
				ltex.enable = true;
			};
		};

		plugins.alpha = {
			enable = true;
			theme = "dashboard";
		};
		
		plugins.cmp = {
			enable = true;
			autoEnableSources = true;
	
 			settings.sources = [
 				{name = "nvim-lsp";}
 				{name = "path";}
 				{name = "buffer";}
 			];
		};
	
		opts = {
			number = true;
			relativenumber = true;
	
			shiftwidth = 2;
	
		};
	
	  globals.mapleader = " ";
	};
}