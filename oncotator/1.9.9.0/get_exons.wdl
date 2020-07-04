version 1.0

task GetExons {
  input {
    Boolean? include_noncoding
    String? padding
    String input_gene_list_file
    String transcript_ds_config
    String output_file_name
  }
  command <<<
    get_exons \
      ~{input_gene_list_file} \
      ~{transcript_ds_config} \
      ~{output_file_name} \
      ~{true="--includeNonCoding" false="" include_noncoding} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""}
  >>>
  parameter_meta {
    include_noncoding: ""
    padding: ""
    input_gene_list_file: "A simple file with a gene name (usually Hugo Symbol) on each line"
    transcript_ds_config: "Path to transcript datasource config file."
    output_file_name: "output path. Must be writable. Will overwrite existing files."
  }
}