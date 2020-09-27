version 1.0

task HcaAuthGetv1user {
  input {
    String? user_id
  }
  command <<<
    hca auth get_v1_user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email)."
  }
  output {
    File out_stdout = stdout()
  }
}