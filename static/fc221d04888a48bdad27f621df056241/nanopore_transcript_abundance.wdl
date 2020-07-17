version 1.0

task NanoporeTranscriptAbundance.py {
  input {
    String? i
    String? c
  }
  command <<<
    nanopore_transcript_abundance.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    c: ""
  }
}