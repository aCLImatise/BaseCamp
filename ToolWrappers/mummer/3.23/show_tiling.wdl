version 1.0

task Showtiling {
  input {
    Boolean? describe_path_tabdelimitedalignment
    Boolean? assume_reference_sequences
    Int? set_maximum_gap
    Float? set_minimum_percent
    Int? set_minimum_length
    File? output_pseudo_molecule
    Boolean? deal_repetitive_contigs
    File? output_style_list
    File? output_tabdelimited_region
    Float? set_minimum_contig_coverage_tile
    Float? set_minimum_contig_coverage_difference
    Boolean? describe_path_xml
    String delta_file
  }
  command <<<
    show_tiling \
      ~{delta_file} \
      ~{if (describe_path_tabdelimitedalignment) then "-a" else ""} \
      ~{if (assume_reference_sequences) then "-c" else ""} \
      ~{if defined(set_maximum_gap) then ("-g " +  '"' + set_maximum_gap + '"') else ""} \
      ~{if defined(set_minimum_percent) then ("-i " +  '"' + set_minimum_percent + '"') else ""} \
      ~{if defined(set_minimum_length) then ("-l " +  '"' + set_minimum_length + '"') else ""} \
      ~{if defined(output_pseudo_molecule) then ("-p " +  '"' + output_pseudo_molecule + '"') else ""} \
      ~{if (deal_repetitive_contigs) then "-R" else ""} \
      ~{if defined(output_style_list) then ("-t " +  '"' + output_style_list + '"') else ""} \
      ~{if defined(output_tabdelimited_region) then ("-u " +  '"' + output_tabdelimited_region + '"') else ""} \
      ~{if defined(set_minimum_contig_coverage_tile) then ("-v " +  '"' + set_minimum_contig_coverage_tile + '"') else ""} \
      ~{if defined(set_minimum_contig_coverage_difference) then ("-V " +  '"' + set_minimum_contig_coverage_difference + '"') else ""} \
      ~{if (describe_path_xml) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    describe_path_tabdelimitedalignment: "Describe the tiling path by printing the tab-delimited\\nalignment region coordinates to stdout"
    assume_reference_sequences: "Assume the reference sequences are circular, and allow\\ntiled contigs to span the origin"
    set_maximum_gap: "Set maximum gap between clustered alignments [-1, INT_MAX]\\nA value of -1 will represent infinity\\n(nucmer default = 1000)\\n(promer default = -1)"
    set_minimum_percent: "Set minimum percent identity to tile [0.0, 100.0]\\n(nucmer default = 90.0)\\n(promer default = 55.0)"
    set_minimum_length: "Set minimum length contig to report [-1, INT_MAX]\\nA value of -1 will represent infinity\\n(common default = 1)"
    output_pseudo_molecule: "Output a pseudo molecule of the query contigs to 'file'"
    deal_repetitive_contigs: "Deal with repetitive contigs by randomly placing them\\nin one of their copy locations (implies -V 0)"
    output_style_list: "Output a TIGR style contig list of each query sequence\\nthat sufficiently matches the reference (non-circular)"
    output_tabdelimited_region: "Output the tab-delimited alignment region coordinates\\nof the unusable contigs to 'file'"
    set_minimum_contig_coverage_tile: "Set minimum contig coverage to tile [0.0, 100.0]\\n(nucmer default = 95.0) sum of individual alignments\\n(promer default = 50.0) extent of syntenic region"
    set_minimum_contig_coverage_difference: "Set minimum contig coverage difference [0.0, 100.0]\\ni.e. the difference needed to determine one alignment\\nis 'better' than another alignment\\n(nucmer default = 10.0) sum of individual alignments\\n(promer default = 30.0) extent of syntenic region"
    describe_path_xml: "Describe the tiling path by printing the XML contig\\nlinking information to stdout"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_pseudo_molecule = "${in_output_pseudo_molecule}"
    File out_output_tabdelimited_region = "${in_output_tabdelimited_region}"
  }
}