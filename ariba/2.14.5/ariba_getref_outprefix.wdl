version 1.0

task AribaGetrefOutprefix {
  input {
    String ariba
    String get_ref
    String db
    String out_prefix
  }
  command <<<
    ariba getref outprefix \
      ~{ariba} \
      ~{get_ref} \
      ~{db} \
      ~{out_prefix}
  >>>
  parameter_meta {
    ariba: ""
    get_ref: ""
    db: ""
    out_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}