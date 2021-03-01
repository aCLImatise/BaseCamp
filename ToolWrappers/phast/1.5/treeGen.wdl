version 1.0

task TreeGen {
  input {
    String or
    String assignment_dot
  }
  command <<<
    treeGen \
      ~{or} \
      ~{assignment_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    or: "treeGen '*speciesFile' ['*groupFile'] > outfile"
    assignment_dot: "The integers should appear in the same order as the"
  }
  output {
    File out_stdout = stdout()
  }
}