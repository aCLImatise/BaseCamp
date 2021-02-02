version 1.0

task HYPHYMPISw {
  input {
    String to
    String fprintfstdout
  }
  command <<<
    HYPHYMPI sw \
      ~{to} \
      ~{fprintfstdout}
  >>>
  parameter_meta {
    to: "firstTime=0;"
    fprintfstdout: "fprintf(stdout, \\\"Finshed Segment \\\", Format(segmentStart,0,0), \\\" - \\\", Format(segmentEnd,0,0), \\\"\\n\\\");"
  }
  output {
    File out_stdout = stdout()
  }
}