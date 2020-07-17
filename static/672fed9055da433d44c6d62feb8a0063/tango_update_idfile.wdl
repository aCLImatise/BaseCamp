version 1.0

task TangoUpdateIdfile {
  input {
    String tango
    String update
    String taxon_map
    String id_file
    String new_file
  }
  command <<<
    tango update idfile \
      ~{tango} \
      ~{update} \
      ~{taxon_map} \
      ~{id_file} \
      ~{new_file}
  >>>
  parameter_meta {
    tango: ""
    update: ""
    taxon_map: ""
    id_file: ""
    new_file: ""
  }
}