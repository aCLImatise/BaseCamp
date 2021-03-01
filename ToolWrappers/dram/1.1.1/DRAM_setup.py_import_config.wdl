version 1.0

task DRAMsetuppyImportConfig {
  input {
    File? config_loc
  }
  command <<<
    DRAM_setup_py import_config \
      ~{if defined(config_loc) then ("--config_loc " +  '"' + config_loc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.1.1--py_0"
  }
  parameter_meta {
    config_loc: "CONFIG file to replace current CONFIG with (default:\\nNone)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}