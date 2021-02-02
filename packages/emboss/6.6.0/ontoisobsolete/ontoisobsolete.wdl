version 1.0

task Ontoisobsolete {
  input {
    Boolean? obo_terms
  }
  command <<<
    ontoisobsolete \
      ~{if (obo_terms) then "-oboterms" else ""}
  >>>
  parameter_meta {
    obo_terms: ": enter obo value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}