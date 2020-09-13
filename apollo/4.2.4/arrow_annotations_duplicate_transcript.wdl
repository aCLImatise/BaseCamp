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
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    transcript_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}