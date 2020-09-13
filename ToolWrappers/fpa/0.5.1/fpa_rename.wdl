version 1.0

task FpaRename {
  input {
    File? rename_reads_passed
    File? write_rename_table
  }
  command <<<
    fpa rename \
      ~{if defined(rename_reads_passed) then ("--input " +  '"' + rename_reads_passed + '"') else ""} \
      ~{if defined(write_rename_table) then ("--output " +  '"' + write_rename_table + '"') else ""}
  >>>
  parameter_meta {
    rename_reads_passed: "Rename reads with value in path passed as parameter"
    write_rename_table: "Write rename table in path passed as parameter"
  }
  output {
    File out_stdout = stdout()
  }
}