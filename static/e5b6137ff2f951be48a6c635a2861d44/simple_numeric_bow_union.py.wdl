version 1.0

task SimpleNumericBowUnionpy {
  command <<<
    simple_numeric_bow_union_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}