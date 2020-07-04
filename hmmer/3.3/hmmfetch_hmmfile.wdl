version 1.0

task HmmfetchHmmfile {
  input {
    String key
  }
  command <<<
    hmmfetch hmmfile \
      ~{key}
  >>>
  parameter_meta {
    key: ""
  }
}