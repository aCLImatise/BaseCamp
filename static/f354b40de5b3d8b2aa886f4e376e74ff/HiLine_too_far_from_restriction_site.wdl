version 1.0

task HiLineTooFarFromRestrictionSite {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine too-far-from-restriction-site \
      ~{var_output} \
      ~{true="--sort" false="" sort}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
}