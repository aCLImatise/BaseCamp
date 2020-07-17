version 1.0

task KwipStats {
  input {
    String hashes
  }
  command <<<
    kwip-stats \
      ~{hashes}
  >>>
  parameter_meta {
    hashes: ""
  }
}