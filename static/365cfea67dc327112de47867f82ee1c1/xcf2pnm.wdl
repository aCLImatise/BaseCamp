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
    Boolean? select_cgm_image
    Boolean? treat_indexed_images
    Boolean? disallow_partial_transparency
    Boolean? dissolve_partial_transparency
    Boolean? flatten_analyse_fullimage
    String? crop_image_converting
    String? y_translate_converted
    Boolean? autocrop_visible_layer
    String? mode
    String? percent
    String? opacity
    Boolean? mask
    Boolean? no_mask
    Boolean? use_utf_
    File filename_dot_xcf
  }
  command <<<
    xcf2pnm \
      ~{filename_dot_xcf} \
      ~{true="-V" false="" show_version_} \
      ~{true="-v" false="" show_progress_messages} \
      ~{true="-j" false="" input_bzip_compressed} \
      ~{true="-z" false="" input_gzip_compressed} \
      ~{if defined(use_decompress_input) then ("-Z " +  '"' + use_decompress_input + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(write_transparency_map) then ("-a " +  '"' + write_transparency_map + '"') else ""} \
      ~{if defined(select_background_color) then ("-b " +  '"' + select_background_color + '"') else ""} \
      ~{true="-A" false="" force_alpha_channel} \
      ~{true="-c" false="" select_color_output} \
      ~{true="-g" false="" select_grayscale_output} \
      ~{true="-m" false="" select_monochrome_output} \
      ~{true="-n" false="" select_cgm_image} \
      ~{true="-T" false="" treat_indexed_images} \
      ~{true="-G" false="" disallow_partial_transparency} \
      ~{true="-D" false="" dissolve_partial_transparency} \
      ~{true="-f" false="" flatten_analyse_fullimage} \
      ~{if defined(crop_image_converting) then ("-S " +  '"' + crop_image_converting + '"') else ""} \
      ~{if defined(y_translate_converted) then ("-O " +  '"' + y_translate_converted + '"') else ""} \
      ~{true="-C" false="" autocrop_visible_layer} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(opacity) then ("--opacity " +  '"' + opacity + '"') else ""} \
      ~{true="--mask" false="" mask} \
      ~{true="--nomask" false="" no_mask} \
      ~{true="-u" false="" use_utf_}
  >>>
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
    select_cgm_image: "select -c/-g/-m by image contents (--pnm)"
    treat_indexed_images: "treat indexed images as RGB for flattening (--truecolor)"
    disallow_partial_transparency: "disallow partial transparency (--for-gif)"
    dissolve_partial_transparency: "dissolve partial transparency (--dissolve)"
    flatten_analyse_fullimage: "flatten to memory; then analyse (--full-image)"
    crop_image_converting: "crop image while converting (--size)"
    y_translate_converted: ",y      translate converted part of image (--offset)"
    autocrop_visible_layer: "autocrop to visible layer boundaries (--autocrop)"
    mode: "set layer mode"
    percent: "set opacity in percent"
    opacity: "set opacity in 1/255 units"
    mask: "enable layer mask"
    no_mask: "disable layer mask"
    use_utf_: "use UTF-8 for layer names (--utf8)"
    filename_dot_xcf: ""
  }
}