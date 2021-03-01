version 1.0

task NebulizerCreateBatchUsersGALAXY {
  input {
    String? password
    Boolean? check
    String account_dot
  }
  command <<<
    nebulizer create_batch_users GALAXY \
      ~{account_dot} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    password: "specify password for new user accounts (otherwise\\nprogram will prompt for password). All accounts will be\\ncreated with the same password."
    check: "check user details but don't try to create the new"
    account_dot: "--help               Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}