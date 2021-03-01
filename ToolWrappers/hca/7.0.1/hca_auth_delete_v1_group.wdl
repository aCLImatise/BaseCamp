version 1.0

task HcaAuthDeletev1group {
  input {
    String? group_id
  }
  command <<<
    hca auth delete_v1_group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_id: "The name of the group."
  }
  output {
    File out_stdout = stdout()
  }
}