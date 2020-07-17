version 1.0

task HiLineGoodReads {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine good-reads \
      ~{var_output} \
      ~{true="--sort" false="" sort}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
}