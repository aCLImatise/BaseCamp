version 1.0

task ArbRepair {
  input {
    Boolean? create_map_file
    Boolean? try_repair_database
    Boolean? optimize_database_using
  }
  command <<<
    arb_repair \
      ~{true="-m" false="" create_map_file} \
      ~{true="-r" false="" try_repair_database} \
      ~{true="-c" false="" optimize_database_using}
  >>>
  parameter_meta {
    create_map_file: "create map file too"
    try_repair_database: "try to repair invalid database"
    optimize_database_using: "[tree_xxx]  optimize database using tree_xxx or largest tree"
  }
}