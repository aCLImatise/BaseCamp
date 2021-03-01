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
    docker: "None"
  }
  parameter_meta {
    fprintfstdout: "fprintf(stdout, \\\"Finshed Segment \\\", Format(segmentStart,0,0), \\\" - \\\", Format(segmentEnd,0,0), \\\"\\n\\\");"
  }
  output {
    File out_stdout = stdout()
  }
}