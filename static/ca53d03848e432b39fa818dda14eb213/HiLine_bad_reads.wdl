version 1.0

task HiLineBadReads {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine bad-reads \
      ~{var_output} \
      ~{true="--sort" false="" sort}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
}