version 1.0

task Extract {
  input {
    File sequence_file
    String coords
  }
  command <<<
    extract \
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