version 1.0

task Genreliabdotpl {
  input {
    String? man
    String? verbose
    String? quiet
    File? reliability_file
    File? alignment_file
    String? probabilities
    String alignment
    String help
    String reliability
  }
  command <<<
    gen_reliab_dot_pl \
      ~{alignment} \
      ~{help} \
      ~{reliability} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(reliability_file) then ("-f " +  '"' + reliability_file + '"') else ""} \
      ~{if defined(alignment_file) then ("-a " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(probabilities) then ("-s " +  '"' + probabilities + '"') else ""}
  >>>
  parameter_meta {
    man: "documentation"
    verbose: ""
    quiet: ""
    reliability_file: "reliability file"
    alignment_file: "alignment file"
    probabilities: "probabilities"
    alignment: ""
    help: ""
    reliability: ""
  }
  output {
    File out_stdout = stdout()
  }
}