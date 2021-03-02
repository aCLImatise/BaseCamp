version 1.0

task Rsemextractreferencetranscripts {
  input {
    String refname
    String quiet
    String gt_ff
    String sources
    String has_mapping_file
    String? mapping_file
    Int chromosome_file_one
    Int? chromosome_file_two
  }
  command <<<
    rsem_extract_reference_transcripts \
      ~{refname} \
      ~{quiet} \
      ~{gt_ff} \
      ~{sources} \
      ~{has_mapping_file} \
      ~{mapping_file} \
      ~{chromosome_file_one} \
      ~{chromosome_file_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    refname: ""
    quiet: ""
    gt_ff: ""
    sources: ""
    has_mapping_file: ""
    mapping_file: ""
    chromosome_file_one: ""
    chromosome_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}