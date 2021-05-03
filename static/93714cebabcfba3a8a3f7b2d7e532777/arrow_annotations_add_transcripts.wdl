version 1.0

task ArrowAnnotationsAddTranscripts {
  input {
    String? transcripts
    Boolean? suppress_history
    Boolean? suppress_events
    String? organism
    String? sequence
  }
  command <<<
    arrow annotations add_transcripts \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if (suppress_history) then "--suppress_history" else ""} \
      ~{if (suppress_events) then "--suppress_events" else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    transcripts: "Transcript data"
    suppress_history: "Suppress the history of this operation"
    suppress_events: "Suppress instant update of the user interface"
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}