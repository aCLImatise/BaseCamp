version 1.0

task Phmm {
  input {
    String seq_one
    String seq_two
    String out_file
  }
  command <<<
    phmm \
      ~{seq_one} \
      ~{seq_two} \
      ~{out_file}
  >>>
  parameter_meta {
    seq_one: ""
    seq_two: ""
    out_file: ""
  }
}