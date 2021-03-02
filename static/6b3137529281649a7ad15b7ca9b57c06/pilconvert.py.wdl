version 1.0

task Pilconvertpy {
  input {
    String? convert_format_default
    Boolean? convert_to_greyscale
    Boolean? convert_palette_image
    Boolean? convert_to_rgb
    Boolean? optimize_trade_speed
    Int? set_compression_quality
    Boolean? list_supported_formats
    String in_file
    String outfile
  }
  command <<<
    pilconvert_py \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(convert_format_default) then ("-c " +  '"' + convert_format_default + '"') else ""} \
      ~{if (convert_to_greyscale) then "-g" else ""} \
      ~{if (convert_palette_image) then "-p" else ""} \
      ~{if (convert_to_rgb) then "-r" else ""} \
      ~{if (optimize_trade_speed) then "-o" else ""} \
      ~{if defined(set_compression_quality) then ("-q " +  '"' + set_compression_quality + '"') else ""} \
      ~{if (list_supported_formats) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert_format_default: "convert to format (default is given by extension)"
    convert_to_greyscale: "convert to greyscale"
    convert_palette_image: "convert to palette image (using standard palette)"
    convert_to_rgb: "convert to rgb"
    optimize_trade_speed: "optimize output (trade speed for size)"
    set_compression_quality: "set compression quality (0-100, JPEG only)"
    list_supported_formats: "list supported file formats"
    in_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}