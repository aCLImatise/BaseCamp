version 1.0

task Uncovered {
  input {
    File sequence_file
    String coords
  }
  command <<<
    uncovered \
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