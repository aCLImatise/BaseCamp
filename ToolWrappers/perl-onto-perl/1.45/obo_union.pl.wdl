version 1.0

task OboUnionpl {
  command <<<
    obo_union_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}