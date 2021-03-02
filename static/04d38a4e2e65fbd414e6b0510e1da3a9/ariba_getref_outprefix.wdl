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
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
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