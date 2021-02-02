version 1.0

task Findphyl {
  input {
    String? limit
    String rate_file
    String? col_file
  }
  command <<<
    findphyl \
      ~{rate_file} \
      ~{col_file} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  parameter_meta {
    limit: ""
    rate_file: ""
    col_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}