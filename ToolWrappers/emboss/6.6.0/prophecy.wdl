version 1.0

task Prophecy {
  input {
    Boolean? type
    Boolean? name
  }
  command <<<
    prophecy \
      ~{if (type) then "-type" else ""} \
      ~{if (name) then "-name" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "menu       [F] Select type (Values: F (Frequency); G\\n(Gribskov); H (Henikoff))"
    name: "string     [mymatrix] Enter a name for the profile (Any\\nstring)"
  }
  output {
    File out_stdout = stdout()
  }
}