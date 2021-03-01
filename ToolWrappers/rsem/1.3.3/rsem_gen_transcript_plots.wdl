version 1.0

task Rsemgentranscriptplots {
  input {
    String sample_name
    String input_list
    String is_allele_specific
    String id_type
  }
  command <<<
    rsem_gen_transcript_plots \
      ~{sample_name} \
      ~{input_list} \
      ~{is_allele_specific} \
      ~{id_type}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_name: ""
    input_list: ""
    is_allele_specific: ""
    id_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}