version 1.0

task Kwip {
  input {
    String hashes
  }
  command <<<
    kwip \
      ~{hashes}
  >>>
  parameter_meta {
    hashes: ""
  }
}