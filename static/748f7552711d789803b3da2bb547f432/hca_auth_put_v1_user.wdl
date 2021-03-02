version 1.0

task HcaAuthPutv1user {
  input {
    String? user_id
    String? status
  }
  command <<<
    hca auth put_v1_user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(status) then ("--status " +  '"' + status + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user_id: "User ID (email)."
    status: ""
  }
  output {
    File out_stdout = stdout()
  }
}