version 1.0

task Pilconvert.py {
  input {
    String? convert_default_given
    Boolean? convert_to_greyscale
    Boolean? convert_using_palette
    Boolean? convert_to_rgb
    Boolean? optimize_output_trade
    String? set_quality_jpeg
    Boolean? list_supported_formats
    String? option
    String in_file
    String outfile
  }
  command <<<
    pilconvert.py \
      ~{option} \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(convert_default_given) then ("-c " +  '"' + convert_default_given + '"') else ""} \
      ~{true="-g" false="" convert_to_greyscale} \
      ~{true="-p" false="" convert_using_palette} \
      ~{true="-r" false="" convert_to_rgb} \
      ~{true="-o" false="" optimize_output_trade} \
      ~{if defined(set_quality_jpeg) then ("-q " +  '"' + set_quality_jpeg + '"') else ""} \
      ~{true="-f" false="" list_supported_formats}
  >>>
  parameter_meta {
    convert_default_given: "convert to format (default is given by extension)"
    convert_to_greyscale: "convert to greyscale"
    convert_using_palette: "convert to palette image (using standard palette)"
    convert_to_rgb: "convert to rgb"
    optimize_output_trade: "optimize output (trade speed for size)"
    set_quality_jpeg: "set compression quality (0-100, JPEG only)"
    list_supported_formats: "list supported file formats"
    option: ""
    in_file: ""
    outfile: ""
  }
}