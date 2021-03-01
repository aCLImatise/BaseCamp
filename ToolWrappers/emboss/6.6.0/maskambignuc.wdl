version 1.0

task Maskambignuc {
  input {
    Boolean? feature
  }
  command <<<
    maskambignuc \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature: "boolean    Use feature information"
  }
  output {
    File out_stdout = stdout()
  }
}