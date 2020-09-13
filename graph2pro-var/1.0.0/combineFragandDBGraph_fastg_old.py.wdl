version 1.0

task CombineFragandDBGraphFastgOldpy {
  input {
    String continue
  }
  command <<<
    combineFragandDBGraph_fastg_old_py \
      ~{continue}
  >>>
  parameter_meta {
    continue: "^"
  }
  output {
    File out_stdout = stdout()
  }
}