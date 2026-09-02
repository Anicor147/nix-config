{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # --- Global Shell & Environment Management ---
    direnv        

    # --- Language Servers & Debuggers for LazyVim C# ---
    omnisharp-roslyn   
    csharp-ls          
    netcoredbg         

    # --- LazyVim Dependencies ---
    git               
    ripgrep           
    fd                 
  ];
}
