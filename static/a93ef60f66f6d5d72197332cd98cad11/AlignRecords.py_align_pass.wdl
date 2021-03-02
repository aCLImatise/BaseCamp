version 1.0

task AlignRecordspyAlignpass {
  input {
    String align_records_do_tpy
  }
  command <<<
    AlignRecords_py align_pass \
      ~{align_records_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align_records_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}