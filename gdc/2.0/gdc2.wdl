version 1.0

task Gdc2 {
  input {
    Boolean? i_two
    Boolean? tx
    Boolean? mm_x
    Boolean? lx
    String mode
    String archive_name
  }
  command <<<
    gdc2 \
      ~{mode} \
      ~{archive_name} \
      ~{true="-i2" false="" i_two} \
      ~{true="-tX" false="" tx} \
      ~{true="-mmX" false="" mm_x} \
      ~{true="-lX" false="" lx}
  >>>
  parameter_meta {
    i_two: "- additionally look for insertions/deletions (indels) of length 2 (default 1 only)"
    tx: "- set number of working threads to X (minimum is 2, default is 4)"
    mm_x: "- set memory limit in MB that program can allocate to X (default is 1024MB)"
    lx: "- set compression degree (defining percentage of sequences used in the second level compression) to X, where X is an integer number in range [1-10] (default is 10); ; X*10 percent of sequences will be used in the second level compression. "
    mode: ""
    archive_name: ""
  }
}