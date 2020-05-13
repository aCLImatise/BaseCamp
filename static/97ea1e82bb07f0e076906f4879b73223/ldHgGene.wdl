version 1.0

task LdHgGene {
  input {
    String impliedImpliedStopAfterCds
  }
  command <<<
    ldHgGene \
      ~{if defined(impliedImpliedStopAfterCds) then ("-impliedStopAfterCds " +  '"' + impliedImpliedStopAfterCds + '"') else ""}
  >>>
}