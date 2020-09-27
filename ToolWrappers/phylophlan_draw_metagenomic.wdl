version 1.0

task PhylophlanDrawMetagenomic {
  input {
    File? input_file_generated
    File? mapping_file_maps
    Int? top
    String? prefix_output_files
    File? separator
    Int? dpi
    String? images_default_svg
    Boolean? verbose
  }
  command <<<
    phylophlan_draw_metagenomic \
      ~{if defined(input_file_generated) then ("--input " +  '"' + input_file_generated + '"') else ""} \
      ~{if defined(mapping_file_maps) then ("--map " +  '"' + mapping_file_maps + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(images_default_svg) then ("-f " +  '"' + images_default_svg + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_file_generated: "The input file generated from\\nphylophlan_metagenomic.py (default: None)"
    mapping_file_maps: "A mapping file that maps each bin to its metagenome\\n(default: None)"
    top: "The number of SGBs to display in the figure (default:\\n20)"
    prefix_output_files: "Prefix output files (default: output_heatmap)"
    separator: "The separator used in the mapping file (default: )"
    dpi: "Dpi resolution of the images (default: 200)"
    images_default_svg: "Images output format (default: svg)"
    verbose: "Prints more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}