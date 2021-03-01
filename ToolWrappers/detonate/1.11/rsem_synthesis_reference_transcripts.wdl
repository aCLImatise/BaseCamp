version 1.0

task Rsemsynthesisreferencetranscripts {
  input {
    String synthesis_ref
    String refname
    String minimum_length
    String quiet
    String has_mapping_file
  }
  command <<<
    rsem_synthesis_reference_transcripts \
      ~{synthesis_ref} \
      ~{refname} \
      ~{minimum_length} \
      ~{quiet} \
      ~{has_mapping_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    synthesis_ref: ""
    refname: ""
    minimum_length: ""
    quiet: ""
    has_mapping_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}