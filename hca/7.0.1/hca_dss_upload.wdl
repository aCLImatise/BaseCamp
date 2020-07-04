version 1.0

task HcaDssUpload {
  input {
    String? src_dir
    String? replica
  }
  command <<<
    hca dss upload \
      ~{if defined(src_dir) then ("--src-dir " +  '"' + src_dir + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    src_dir: ""
    replica: ""
  }
}