version 1.0

task AtlasWalk {
  input {
    String? k
    String? tmp
    Boolean? keep_tmp
    String sample
    String probe_set
  }
  command <<<
    atlas walk \
      ~{sample} \
      ~{probe_set} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp}
  >>>
  parameter_meta {
    k: ""
    tmp: ""
    keep_tmp: ""
    sample: "sample id"
    probe_set: "probe_set"
  }
}