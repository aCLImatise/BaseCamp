version 1.0

task Pdb2mdb {
  input {
    String assembly
  }
  command <<<
    pdb2mdb \
      ~{assembly}
  >>>
  parameter_meta {
    assembly: ""
  }
  output {
    File out_stdout = stdout()
  }
}