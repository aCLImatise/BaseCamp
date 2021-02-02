version 1.0

task CombineFragandDBGraphFastgpy {
  input {
    String continue
  }
  command <<<
    combineFragandDBGraph_fastg_py \
      ~{continue}
  >>>
  parameter_meta {
    continue: "^"
  }
  output {
    File out_stdout = stdout()
  }
}