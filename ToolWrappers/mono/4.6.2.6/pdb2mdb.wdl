version 1.0

task Pdb2mdb {
  input {
    String assembly
  }
  command <<<
    pdb2mdb \
      ~{assembly}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: ""
  }
  output {
    File out_stdout = stdout()
  }
}