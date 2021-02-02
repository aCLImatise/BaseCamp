version 1.0

task AtlasWalk {
  input {
    Boolean? keep_tmp
    String? tmp
    String? k
    String sample
    String probe_set
  }
  command <<<
    atlas walk \
      ~{sample} \
      ~{probe_set} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    keep_tmp: ""
    tmp: ""
    k: ""
    sample: "sample id"
    probe_set: "probe_set"
  }
  output {
    File out_stdout = stdout()
  }
}