version 1.0

task PoreCContactsMerge {
  input {
    Boolean? fof_n
    String dest_contact_table
  }
  command <<<
    pore_c contacts merge \
      ~{dest_contact_table} \
      ~{if (fof_n) then "--fofn" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    fof_n: "If this flag is set then the SRC_CONTACT_TABLES is a file of\\nfilenames corresponding to the contact tables you want to merge.\\nThis is workaround for when the command line gets too long."
    dest_contact_table: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}