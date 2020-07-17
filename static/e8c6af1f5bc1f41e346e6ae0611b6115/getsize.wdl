version 1.0

task Getsize {
  input {
    String data_file
  }
  command <<<
    getsize \
      ~{data_file}
  >>>
  parameter_meta {
    data_file: ""
  }
}