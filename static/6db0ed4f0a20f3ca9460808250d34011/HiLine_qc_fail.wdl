version 1.0

task HiLineQcFail {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine qc-fail \
      ~{var_output} \
      ~{true="--sort" false="" sort}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
}