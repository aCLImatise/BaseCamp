version 1.0

task NebulizerCreateUser {
  input {
    String? password
    Boolean? check
  }
  command <<<
    nebulizer create_user \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  parameter_meta {
    password: "specify password for new user account (otherwise\\nprogram will prompt for password)"
    check: "check user details but don't try to create the new"
  }
  output {
    File out_stdout = stdout()
  }
}