version 1.0

task HcaAuthGetV1Group {
  input {
    String? group_id
  }
  command <<<
    hca auth get-v1-group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group."
  }
}