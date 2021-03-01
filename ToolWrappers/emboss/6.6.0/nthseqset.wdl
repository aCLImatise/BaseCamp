version 1.0

task Nthseqset {
  input {
    Boolean? number
    Boolean? feature
  }
  command <<<
    nthseqset \
      ~{if (number) then "-number" else ""} \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number: "integer    [1] The number of the sequence set to output\\n(Integer 1 or more)"
    feature: "boolean    Use feature information"
  }
  output {
    File out_stdout = stdout()
  }
}