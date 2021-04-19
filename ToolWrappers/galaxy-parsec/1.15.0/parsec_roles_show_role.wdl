version 1.0

task ParsecRolesShowRole {
  input {
    String role_id
  }
  command <<<
    parsec roles show_role \
      ~{role_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    role_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}