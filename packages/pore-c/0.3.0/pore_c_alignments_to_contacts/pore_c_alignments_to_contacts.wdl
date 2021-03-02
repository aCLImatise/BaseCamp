version 1.0

task PoreCAlignmentsTocontacts {
  input {
    String pore_c_table
    String contact_table
  }
  command <<<
    pore_c alignments to_contacts \
      ~{pore_c_table} \
      ~{contact_table}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    pore_c_table: ""
    contact_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}