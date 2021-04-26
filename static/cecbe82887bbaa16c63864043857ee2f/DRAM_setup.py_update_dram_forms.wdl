version 1.0

task DRAMsetuppyUpdateDramForms {
  input {
    Directory? output_dir
  }
  command <<<
    DRAM_setup_py update_dram_forms \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.2--pyhdfd78af_0"
  }
  parameter_meta {
    output_dir: "Directory to store newly downloaded files, may want\\nthis to be the same directory as the rest of your DRAM\\ndatabase files (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}