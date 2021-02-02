version 1.0

task HcaAuthGetv1group {
  input {
    String? group_id
  }
  command <<<
    hca auth get_v1_group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group."
  }
  output {
    File out_stdout = stdout()
  }
}