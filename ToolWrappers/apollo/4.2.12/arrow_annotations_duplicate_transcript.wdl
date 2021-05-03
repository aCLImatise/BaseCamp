version 1.0

task ArrowAnnotationsDuplicateTranscript {
  input {
    String? organism
    String? sequence
    String transcript_id
  }
  command <<<
    arrow annotations duplicate_transcript \
      ~{transcript_id} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    transcript_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}