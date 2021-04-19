version 1.0

task DRAMsetuppyUpdateDescriptionDb {
  input {
    String? output_loc
  }
  command <<<
    DRAM_setup_py update_description_db \
      ~{if defined(output_loc) then ("--output_loc " +  '"' + output_loc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.1.1--py_0"
  }
  parameter_meta {
    output_loc: "Location to store desciption database, will be stored\\nin location set in CONFIG if not given (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}