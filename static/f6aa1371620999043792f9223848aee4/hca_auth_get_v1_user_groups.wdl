version 1.0

task HcaAuthGetv1usergroups {
  input {
    String? user_id
  }
  command <<<
    hca auth get_v1_user_groups \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email).\\n--next-token NEXT_TOKEN\\n--per-page PER_PAGE\\n--no-paginate         Do not automatically page the responses\\n"
  }
  output {
    File out_stdout = stdout()
  }
}