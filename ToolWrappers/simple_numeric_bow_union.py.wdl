version 1.0

task SimpleNumericBowUnionpy {
  command <<<
    simple_numeric_bow_union_py
  >>>
  output {
    File out_stdout = stdout()
  }
}