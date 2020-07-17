version 1.0

task MakeCuratedJtab {
  input {
    String? bam_file_name
    String? j_list
    String? j_tab
    String? anchor_size_default
    String? output_directory_default
  }
  command <<<
    make_curated_jtab \
      ~{if defined(bam_file_name) then ("-i " +  '"' + bam_file_name + '"') else ""} \
      ~{if defined(j_list) then ("-jlist " +  '"' + j_list + '"') else ""} \
      ~{if defined(j_tab) then ("-jtab " +  '"' + j_tab + '"') else ""} \
      ~{if defined(anchor_size_default) then ("-a " +  '"' + anchor_size_default + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""}
  >>>
  parameter_meta {
    bam_file_name: "BAM file name"
    j_list: "Curated junction list A table with >= 1 column, with column names It must have a column named 'juncid' Any additional columns are carried over to the new jtab "
    j_tab: "junctiontab (jtab) From first pass analysis of the BAM file supplied"
    anchor_size_default: "Anchor size, default=8"
    output_directory_default: "Output directory, default='curated_juncs'"
  }
}