version 1.0

task Aln2fapl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? de_gap
    String brief
    String full
    String help
  }
  command <<<
    aln2fa_pl \
      ~{brief} \
      ~{full} \
      ~{help} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (de_gap) then "--degap" else ""}
  >>>
  parameter_meta {
    man: "Full documentation"
    verbose: "Verbose"
    de_gap: "Remove gaps from sequences"
    brief: ""
    full: ""
    help: ""
  }
  output {
    File out_stdout = stdout()
  }
}