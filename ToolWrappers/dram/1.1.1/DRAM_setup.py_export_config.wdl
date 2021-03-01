version 1.0

task DRAMsetuppyExportConfig {
  input {
    File? output_file
  }
  command <<<
    DRAM_setup_py export_config \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.1.1--py_0"
  }
  parameter_meta {
    output_file: "File to save exported CONFIG file to, by default\\nwillprint CONFIG (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}