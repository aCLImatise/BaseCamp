version 1.0

task DRAMsetuppyUpdateDescriptionDb {
  input {
    String dram_setup_do_tpy
  }
  command <<<
    DRAM_setup_py update_description_db \
      ~{dram_setup_do_tpy}
  >>>
  parameter_meta {
    dram_setup_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}