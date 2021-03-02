version 1.0

task FalconcIpa2constructconfig {
  input {
    Boolean? help_syntax
    File? _outfn_string
    File? out_fmt
    Boolean? _infn_string
    Boolean? no_sort
    Int ip_a_two_construct_config
  }
  command <<<
    falconc ipa2_construct_config \
      ~{ip_a_two_construct_config} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_outfn_string) then "-o" else ""} \
      ~{if (out_fmt) then "--out-fmt" else ""} \
      ~{if (_infn_string) then "-i" else ""} \
      ~{if (no_sort) then "--no-sort" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _outfn_string: "=, --out-fn=  string  REQUIRED  Output file."
    out_fmt: "=      string  \\\"json\\\"    Output format of the config file. (json or\\nbash)"
    _infn_string: "=, --in-fn=   string  \\\"-\\\"       set in_fn"
    no_sort: "bool    false     set no_sort"
    ip_a_two_construct_config: ""
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
    File out_out_fmt = "${in_out_fmt}"
  }
}