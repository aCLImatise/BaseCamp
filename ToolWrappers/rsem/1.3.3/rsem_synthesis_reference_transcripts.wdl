version 1.0

task Rsemsynthesisreferencetranscripts {
  input {
    String synthesis_ref
    String refname
    String quiet
    String has_mapping_file
  }
  command <<<
    rsem_synthesis_reference_transcripts \
      ~{synthesis_ref} \
      ~{refname} \
      ~{quiet} \
      ~{has_mapping_file}
  >>>
  parameter_meta {
    synthesis_ref: ""
    refname: ""
    quiet: ""
    has_mapping_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}