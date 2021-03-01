version 1.0

task Genreliabdotpl {
  input {
    String? man
    File? verbose
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
      ~{if defined(alignment_file) then ("-a " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(probabilities) then ("-s " +  '"' + probabilities + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "documentation"
    verbose: "reliability file"
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