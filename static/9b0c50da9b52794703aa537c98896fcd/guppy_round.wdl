version 1.0

task GuppyRound {
  input {
    Boolean? out_dir
    Boolean? prefix
    Boolean? sig_figs
    Boolean? cut_off
    Boolean? help
    String round
    String place_file
    String? s
  }
  command <<<
    guppy round \
      ~{round} \
      ~{place_file} \
      ~{s} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (sig_figs) then "--sig-figs" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    sig_figs: "Set the number of significant figures used for rounding. Specify 0 for no rounding. Default: 3."
    cut_off: "Set the rounding inclusion cutoff for the ML weight ratio. Default: 0.01."
    help: "Display this list of options"
    round: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}