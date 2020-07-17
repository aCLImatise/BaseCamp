version 1.0

task RsemSynthesisReferenceTranscripts {
  input {
    String synthesis_ref
    String refname
    Int minimum_length
    String quiet
    String has_mapping_file
  }
  command <<<
    rsem-synthesis-reference-transcripts \
      ~{synthesis_ref} \
      ~{refname} \
      ~{minimum_length} \
      ~{quiet} \
      ~{has_mapping_file}
  >>>
  parameter_meta {
    synthesis_ref: ""
    refname: ""
    minimum_length: ""
    quiet: ""
    has_mapping_file: ""
  }
}