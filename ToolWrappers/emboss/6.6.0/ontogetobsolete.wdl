version 1.0

task Ontogetobsolete {
  input {
    Boolean? subclasses
  }
  command <<<
    ontogetobsolete \
      ~{if (subclasses) then "-subclasses" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subclasses: "boolean    [N] Extend the query matches to include all\\nterms which are specialisations\\n(sub-classes) of the matched terms."
  }
  output {
    File out_stdout = stdout()
  }
}