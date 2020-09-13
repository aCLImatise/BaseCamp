version 1.0

task HyphySw {
  input {
    String mpireceive__fromnode
    String branch_under_condition
    String firsttime
    String fprintfstdout
  }
  command <<<
    hyphy sw \
      ~{mpireceive__fromnode} \
      ~{branch_under_condition} \
      ~{firsttime} \
      ~{fprintfstdout}
  >>>
  parameter_meta {
    mpireceive__fromnode: "MPIReceive(-1, fromNode, result_String);"
    branch_under_condition: "Branch under condition 'firstTime'"
    firsttime: "firstTime=0;"
    fprintfstdout: "fprintf(stdout, \\\"Finshed Segment \\\", Format(segmentStart,0,0), \\\" - \\\", Format(segmentEnd,0,0), \\\"\\n\\\");"
  }
  output {
    File out_stdout = stdout()
  }
}