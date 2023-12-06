{configs, ...}:

{
  programs.tealdeer = {
    enable = true;
    settings = {
      style = {
        description = {
          underline = false;
          bold = true;
          italic = false;
        };
        command_name = {
          foreground = "cyan";
          underline = false;
          bold = true;
          italic = false;
        };
        example_text = {
          foreground = "green";
          underline = false;
          bold = false;
          italic = true;
        };
        example_code = {
          foreground = "cyan";
          underline = false;
          bold = false;
          italic = false
        };
        example_variable = {
          foreground = "cyan";
          underline = true;
          bold = false;
          italic = false;
        };
        
      };
      updates = {
        auto_update = true;
        auto_update_interval_hours = 720;
      };
    };
  };
}
