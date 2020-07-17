version 1.0

task ShowAligns {
  input {
    String delta_file
    String ref_id
    String qry_id
  }
  command <<<
    show-aligns \
      ~{delta_file} \
      ~{ref_id} \
      ~{qry_id}
  >>>
  parameter_meta {
    delta_file: ""
    ref_id: ""
    qry_id: ""
  }
}