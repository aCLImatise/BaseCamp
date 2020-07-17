version 1.0

task CmfetchCmfile {
  input {
    String key
  }
  command <<<
    cmfetch cmfile \
      ~{key}
  >>>
  parameter_meta {
    key: ""
  }
}