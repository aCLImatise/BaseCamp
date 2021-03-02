version 1.0

task Obenergy {
  input {
    Boolean? verbose_print_indivual
    String? ff
    File filename
  }
  command <<<
    obenergy \
      ~{filename} \
      ~{if (verbose_print_indivual) then "-v" else ""} \
      ~{if defined(ff) then ("-ff " +  '"' + ff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_print_indivual: "verbose: print out indivual energy interactions"
    ff: "select a forcefield\\navailable forcefields:"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}