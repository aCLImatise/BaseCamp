version 1.0

task Obenergy {
  input {
    Boolean? verbose_print_interactions
    String? ff
    File filename
  }
  command <<<
    obenergy \
      ~{filename} \
      ~{true="-v" false="" verbose_print_interactions} \
      ~{if defined(ff) then ("-ff " +  '"' + ff + '"') else ""}
  >>>
  parameter_meta {
    verbose_print_interactions: "verbose: print out indivual energy interactions"
    ff: "select a forcefield available forcefields:"
    filename: ""
  }
}