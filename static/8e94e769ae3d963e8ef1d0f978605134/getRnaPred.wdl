version 1.0

task GetRnaPred {
  input {
    String database
    String table
    String chromosome
    String output_dot_fa
  }
  command <<<
    getRnaPred \
      ~{database} \
      ~{table} \
      ~{chromosome} \
      ~{output_dot_fa}
  >>>
  parameter_meta {
    database: ""
    table: ""
    chromosome: ""
    output_dot_fa: ""
  }
}