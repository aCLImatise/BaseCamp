version 1.0

task HYPHYMPISw {
  input {
    String fprintfstdout
  }
  command <<<
    HYPHYMPI sw \
      ~{fprintfstdout}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0"
  }
  parameter_meta {
    fprintfstdout: "fprintf(stdout, \\\"Finshed Segment \\\", Format(segmentStart,0,0), \\\" - \\\", Format(segmentEnd,0,0), \\\"\\n\\\");"
  }
  output {
    File out_stdout = stdout()
  }
}