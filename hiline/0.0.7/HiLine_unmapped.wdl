version 1.0

task HiLineUnmapped {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine unmapped \
      ~{var_output} \
      ~{true="--sort" false="" sort}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
}