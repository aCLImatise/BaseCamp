version 1.0

task Forge {
  input {
    String ann
    String dna
  }
  command <<<
    forge \
      ~{ann} \
      ~{dna}
  >>>
  parameter_meta {
    ann: ""
    dna: ""
  }
  output {
    File out_stdout = stdout()
  }
}