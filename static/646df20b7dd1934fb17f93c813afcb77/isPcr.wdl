version 1.0

task IsPcr {
  input {
    String database
    String query
    String var_output
  }
  command <<<
    isPcr \
      ~{database} \
      ~{query} \
      ~{var_output}
  >>>
  parameter_meta {
    database: ""
    query: ""
    var_output: ""
  }
}