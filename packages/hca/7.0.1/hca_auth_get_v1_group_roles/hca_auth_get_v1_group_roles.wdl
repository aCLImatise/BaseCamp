version 1.0

task HcaAuthGetv1grouproles {
  input {
    String? group_id
  }
  command <<<
    hca auth get_v1_group_roles \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group.\\n--next-token NEXT_TOKEN\\n--per-page PER_PAGE\\n--no-paginate         Do not automatically page the responses\\n"
  }
  output {
    File out_stdout = stdout()
  }
}