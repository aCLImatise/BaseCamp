version 1.0

task Taxtreesh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String names_dot_dmp
    String nodes_dot_dmp
    String merged_dot_dmp
    String tree_dot_tax_tree_do_tgz
  }
  command <<<
    taxtree_sh \
      ~{names_dot_dmp} \
      ~{nodes_dot_dmp} \
      ~{merged_dot_dmp} \
      ~{tree_dot_tax_tree_do_tgz} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM.  The max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an out-of-memory\\nexception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    names_dot_dmp: ""
    nodes_dot_dmp: ""
    merged_dot_dmp: ""
    tree_dot_tax_tree_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}