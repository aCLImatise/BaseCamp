version 1.0

task SearchFusionGene {
  input {
    Boolean? gene_annotation_file
    Boolean? fusion_junction_file
    Boolean? f_header
    Boolean? normal_junction_file
    Boolean? n_header
    File? output_file_name
    Boolean? comparison_range_default
  }
  command <<<
    search_fusion_gene \
      ~{if (gene_annotation_file) then "-g" else ""} \
      ~{if (fusion_junction_file) then "-f" else ""} \
      ~{if (f_header) then "-f_header" else ""} \
      ~{if (normal_junction_file) then "-n" else ""} \
      ~{if (n_header) then "-n_header" else ""} \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if (comparison_range_default) then "-r" else ""}
  >>>
  parameter_meta {
    gene_annotation_file: ":          gene annotation file name"
    fusion_junction_file: ":          fusion junction file name"
    f_header: ":   skip header of fusion junction file"
    normal_junction_file: ":          normal junction file name"
    n_header: ":   skip header of normal junction file"
    output_file_name: ":          output file name"
    comparison_range_default: ":          comparison range, default [0]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}