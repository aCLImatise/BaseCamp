version 1.0

task NanoporeTranscriptAbundancepy {
  input {
    String? c
    String? i
  }
  command <<<
    nanopore_transcript_abundance_py \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanosim:2.6.0--0"
  }
  parameter_meta {
    c: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}