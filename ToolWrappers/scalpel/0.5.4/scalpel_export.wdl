version 1.0

task Scalpelexport {
  input {
    Boolean? verbose
    Boolean? single
    Boolean? de_novo
    Boolean? somatic
    String var_command
  }
  command <<<
    scalpel_export \
      ~{var_command} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (de_novo) then "--denovo" else ""} \
      ~{if (somatic) then "--somatic" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: ": verbose mode"
    single: ": export variants for single exome study"
    de_novo: ": export variants for family study (mom,dad,affected,sibling)"
    somatic: ": export variants for normal/tumor study"
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}