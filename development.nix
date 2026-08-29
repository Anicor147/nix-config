{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # --- Global Shell & Environment Management ---
    direnv        # Crucial for your 'nix develop' workflow

    # --- Language Servers & Debuggers for LazyVim C# ---
    omnisharp-roslyn   # C# Language Server (Auto-completion / Intellisense)
    csharp-ls          # Alternative high-performance C# LSP
    netcoredbg         # .NET Debugger (For step-through debugging in Neovim)

    # --- LazyVim Dependencies ---
    git                # Lazy needs Git to install plugins
    ripgrep            # Telescope file fuzzy searching
    fd                 # High-speed file finder
  ];
}
