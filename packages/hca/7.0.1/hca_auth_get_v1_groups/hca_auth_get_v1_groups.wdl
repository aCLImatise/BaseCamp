version 1.0

task HcaAuthGetv1groups {
  input {
    String? next_token
  }
  command <<<
    hca auth get_v1_groups \
      ~{if defined(next_token) then ("--next-token " +  '"' + next_token + '"') else ""}
  >>>
  parameter_meta {
    next_token: ""
  }
  output {
    File out_stdout = stdout()
  }
}