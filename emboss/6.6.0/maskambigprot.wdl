version 1.0

task Maskambigprot {
  input {
    Boolean? feature
  }
  command <<<
    maskambigprot \
      ~{if (feature) then "-feature" else ""}
  >>>
  parameter_meta {
    feature: "boolean    Use feature information"
  }
  output {
    File out_stdout = stdout()
  }
}