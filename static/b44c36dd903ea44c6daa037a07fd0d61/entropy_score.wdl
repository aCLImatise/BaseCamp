version 1.0

task Entropyscore {
  input {
    File sequence_file
    String coords
  }
  command <<<
    entropy_score \
      ~{sequence_file} \
      ~{coords}
  >>>
  parameter_meta {
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}