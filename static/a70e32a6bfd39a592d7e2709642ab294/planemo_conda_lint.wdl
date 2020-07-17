version 1.0

task PlanemoCondaLint {
  input {
    Boolean? report_level
    Boolean? fail_level
    Boolean? recursive
    String recipe_dir
  }
  command <<<
    planemo conda_lint \
      ~{recipe_dir} \
      ~{true="--report_level" false="" report_level} \
      ~{true="--fail_level" false="" fail_level} \
      ~{true="--recursive" false="" recursive}
  >>>
  parameter_meta {
    report_level: "[all|warn|error]"
    fail_level: "[warn|error]"
    recursive: "Recursively perform command for nested conda directories."
    recipe_dir: ""
  }
}