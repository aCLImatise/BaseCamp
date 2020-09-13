version 1.0

task NebulizerCreateUsersFromFile {
  input {
    Boolean? check
  }
  command <<<
    nebulizer create_users_from_file \
      ~{if (check) then "--check" else ""}
  >>>
  parameter_meta {
    check: "check user details but don't try to create the new"
  }
  output {
    File out_stdout = stdout()
  }
}