version 1.0

task Mglobenergy {
  input {
    Boolean? verbose_print_interactions
    String? ff
    String ob_energy
    File filename
  }
  command <<<
    mglobenergy \
      ~{ob_energy} \
      ~{filename} \
      ~{true="-v" false="" verbose_print_interactions} \
      ~{if defined(ff) then ("-ff " +  '"' + ff + '"') else ""}
  >>>
  parameter_meta {
    verbose_print_interactions: "verbose: print out indivual energy interactions"
    ff: "select a forcefield available forcefields:"
    ob_energy: ""
    filename: ""
  }
}