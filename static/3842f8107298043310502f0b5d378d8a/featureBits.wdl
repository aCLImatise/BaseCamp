version 1.0

task FeatureBits {
  input {
    String database
    String table
  }
  command <<<
    featureBits \
      ~{database} \
      ~{table}
  >>>
  parameter_meta {
    database: ""
    table: ""
  }
}