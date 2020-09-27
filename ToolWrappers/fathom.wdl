version 1.0

task Fathom {
  input {
    String ann
    String dna
    String commands
  }
  command <<<
    fathom \
      ~{ann} \
      ~{dna} \
      ~{commands}
  >>>
  parameter_meta {
    ann: ""
    dna: ""
    commands: ""
  }
  output {
    File out_stdout = stdout()
  }
}