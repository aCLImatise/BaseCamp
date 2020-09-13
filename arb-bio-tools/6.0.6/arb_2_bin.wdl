version 1.0

task Arb2Bin {
  input {
    Boolean? create_map_file
    Boolean? try_repair_database
    Boolean? optimize_database_using
  }
  command <<<
    arb_2_bin \
      ~{if (create_map_file) then "-m" else ""} \
      ~{if (try_repair_database) then "-r" else ""} \
      ~{if (optimize_database_using) then "-c" else ""}
  >>>
  parameter_meta {
    create_map_file: "create map file too"
    try_repair_database: "try to repair destroyed database"
    optimize_database_using: "[tree_xxx]  optimize database using tree_xxx or largest tree"
  }
  output {
    File out_stdout = stdout()
  }
}