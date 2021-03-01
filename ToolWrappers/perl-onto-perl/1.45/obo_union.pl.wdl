version 1.0

task OboUnionpl {
  command <<<
    obo_union_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}