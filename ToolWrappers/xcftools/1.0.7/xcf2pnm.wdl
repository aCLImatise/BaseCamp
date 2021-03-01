version 1.0

task Xcf2pnm {
  input {
    Boolean? show_version_
    Boolean? show_progress_messages
    Boolean? input_bzip_compressed
    Boolean? input_gzip_compressed
    String? use_decompress_input
    File? name_output_file
    File? write_transparency_map
    String? select_background_color
    Boolean? force_alpha_channel
    Boolean? select_color_output
    Boolean? select_grayscale_output
    Boolean? select_monochrome_output
    Boolean? select_cgm_
    Boolean? treat_indexed_images
    Boolean? disallow_partial_transparency
    Boolean? dissolve_partial_transparency
    Boolean? flatten_then_
    Int? crop_image_converting
    String? y_translate_converted
    Boolean? autocrop__autocrop
    String? mode
    String? percent
    Int? opacity
    Boolean? mask
    Boolean? no_mask
    Boolean? use_utf_
    File filename_dot_xcf
  }
  command <<<
    xcf2pnm \
      ~{filename_dot_xcf} \
      ~{if (show_version_) then "-V" else ""} \
      ~{if (show_progress_messages) then "-v" else ""} \
      ~{if (input_bzip_compressed) then "-j" else ""} \
      ~{if (input_gzip_compressed) then "-z" else ""} \
      ~{if defined(use_decompress_input) then ("-Z " +  '"' + use_decompress_input + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(write_transparency_map) then ("-a " +  '"' + write_transparency_map + '"') else ""} \
      ~{if defined(select_background_color) then ("-b " +  '"' + select_background_color + '"') else ""} \
      ~{if (force_alpha_channel) then "-A" else ""} \
      ~{if (select_color_output) then "-c" else ""} \
      ~{if (select_grayscale_output) then "-g" else ""} \
      ~{if (select_monochrome_output) then "-m" else ""} \
      ~{if (select_cgm_) then "-n" else ""} \
      ~{if (treat_indexed_images) then "-T" else ""} \
      ~{if (disallow_partial_transparency) then "-G" else ""} \
      ~{if (dissolve_partial_transparency) then "-D" else ""} \
      ~{if (flatten_then_) then "-f" else ""} \
      ~{if defined(crop_image_converting) then ("-S " +  '"' + crop_image_converting + '"') else ""} \
      ~{if defined(y_translate_converted) then ("-O " +  '"' + y_translate_converted + '"') else ""} \
      ~{if (autocrop__autocrop) then "-C" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(opacity) then ("--opacity " +  '"' + opacity + '"') else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (no_mask) then "--nomask" else ""} \
      ~{if (use_utf_) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_version_: "show version (--version)"
    show_progress_messages: "show progress messages (--verbose)"
    input_bzip_compressed: "input is bzip2 compressed (--bzip)"
    input_gzip_compressed: "input is gzip compressed (--gzip)"
    use_decompress_input: "use 'command' to decompress input (--unpack)"
    name_output_file: "name output file (--output)"
    write_transparency_map: "write transparency map (--alpha)"
    select_background_color: "select background color (--background)"
    force_alpha_channel: "force alpha channel in output (--force-alpha)"
    select_color_output: "select color output (--color)"
    select_grayscale_output: "select grayscale output (--gray)"
    select_monochrome_output: "select monochrome output (--mono)"
    select_cgm_: "select -c/-g/-m by image contents (--pnm)"
    treat_indexed_images: "treat indexed images as RGB for flattening (--truecolor)"
    disallow_partial_transparency: "disallow partial transparency (--for-gif)"
    dissolve_partial_transparency: "dissolve partial transparency (--dissolve)"
    flatten_then_: "flatten to memory; then analyse (--full-image)"
    crop_image_converting: "crop image while converting (--size)"
    y_translate_converted: ",y      translate converted part of image (--offset)"
    autocrop__autocrop: "autocrop to visible layer boundaries (--autocrop)"
    mode: "set layer mode"
    percent: "set opacity in percent"
    opacity: "set opacity in 1/255 units"
    mask: "enable layer mask"
    no_mask: "disable layer mask"
    use_utf_: "use UTF-8 for layer names (--utf8)"
    filename_dot_xcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}