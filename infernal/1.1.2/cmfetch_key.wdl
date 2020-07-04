version 1.0

task CmfetchKey {
  input {
    String cm_fetch
    String cm_file
    String key
  }
  command <<<
    cmfetch key \
      ~{cm_fetch} \
      ~{cm_file} \
      ~{key}
  >>>
  parameter_meta {
    cm_fetch: ""
    cm_file: ""
    key: ""
  }
}