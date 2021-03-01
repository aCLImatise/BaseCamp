version 1.0

task Webpng {
  input {
    String? turns_onoff_interlace
    Boolean? prints_table_color
    Int? set_transparent_color
    Boolean? reports_dimensions_characteristics
    Boolean? prints_alpha_channels
    String web_png
  }
  command <<<
    _webpng \
      ~{web_png} \
      ~{if defined(turns_onoff_interlace) then ("-i " +  '"' + turns_onoff_interlace + '"') else ""} \
      ~{if (prints_table_color) then "-l" else ""} \
      ~{if defined(set_transparent_color) then ("-t " +  '"' + set_transparent_color + '"') else ""} \
      ~{if (reports_dimensions_characteristics) then "-d" else ""} \
      ~{if (prints_alpha_channels) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    turns_onoff_interlace: "Turns on/off interlace"
    prints_table_color: "Prints the table of color indexes"
    set_transparent_color: "Set the transparent color to the specified index (0-255 or \\\"none\\\")"
    reports_dimensions_characteristics: "Reports the dimensions and other characteristics of the image"
    prints_alpha_channels: "Prints all alpha channels that are not 100% opaque"
    web_png: ""
  }
  output {
    File out_stdout = stdout()
  }
}