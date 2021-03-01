version 1.0

task DRAMsetuppyVersion {
  input {
    String dram_setup_do_tpy
  }
  command <<<
    DRAM_setup_py version \
      ~{dram_setup_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dram_setup_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}