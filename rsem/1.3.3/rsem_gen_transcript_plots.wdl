version 1.0

task RsemGenTranscriptPlots {
  input {
    String sample_name
    String input_list
    String is_allele_specific
    String id_type
  }
  command <<<
    rsem-gen-transcript-plots \
      ~{sample_name} \
      ~{input_list} \
      ~{is_allele_specific} \
      ~{id_type}
  >>>
  parameter_meta {
    sample_name: ""
    input_list: ""
    is_allele_specific: ""
    id_type: ""
  }
}