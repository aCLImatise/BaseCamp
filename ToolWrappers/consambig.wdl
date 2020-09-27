version 1.0

task Consambig {
  input {
    Boolean? name
  }
  command <<<
    consambig \
      ~{if (name) then "-name" else ""}
  >>>
  parameter_meta {
    name: "string     Name of the consensus sequence (Any string)"
  }
  output {
    File out_stdout = stdout()
  }
}