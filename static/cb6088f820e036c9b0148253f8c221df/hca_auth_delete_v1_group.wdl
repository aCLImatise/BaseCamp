version 1.0

task HcaAuthDeleteV1Group {
  input {
    String? group_id
  }
  command <<<
    hca auth delete-v1-group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group."
  }
}