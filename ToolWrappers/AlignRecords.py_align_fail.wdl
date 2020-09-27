version 1.0

task AlignRecordspyAlignfail {
  input {
    String align_records_do_tpy
  }
  command <<<
    AlignRecords_py align_fail \
      ~{align_records_do_tpy}
  >>>
  parameter_meta {
    align_records_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}