version 1.0

task Aln2wig {
  input {
    Boolean? filename
    Boolean? use_span_notation
    Boolean? name_of_track
  }
  command <<<
    aln2wig \
      ~{if (filename) then "-f" else ""} \
      ~{if (use_span_notation) then "-s" else ""} \
      ~{if (name_of_track) then "-t" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    filename: "<filename>"
    use_span_notation: "Use span notation"
    name_of_track: "Name of the track"
  }
  output {
    File out_stdout = stdout()
  }
}