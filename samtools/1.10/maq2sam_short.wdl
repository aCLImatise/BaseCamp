version 1.0

task Maq2samShort {
  input {
    String maq_two_sam
    String in_dot_map
    String? read_group
  }
  command <<<
    maq2sam-short \
      ~{maq_two_sam} \
      ~{in_dot_map} \
      ~{read_group}
  >>>
  parameter_meta {
    maq_two_sam: ""
    in_dot_map: ""
    read_group: ""
  }
}