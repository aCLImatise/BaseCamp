version 1.0

task Arb2Bin {
  input {
    Boolean? create_map_file
    Boolean? try_repair_destroyed
    Boolean? optimize_database_using
  }
  command <<<
    arb_2_bin \
      ~{true="-m" false="" create_map_file} \
      ~{true="-r" false="" try_repair_destroyed} \
      ~{true="-c" false="" optimize_database_using}
  >>>
  parameter_meta {
    create_map_file: "create map file too"
    try_repair_destroyed: "try to repair destroyed database"
    optimize_database_using: "[tree_xxx]  optimize database using tree_xxx or largest tree"
  }
}