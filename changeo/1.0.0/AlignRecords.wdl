version 1.0

task AlignRecords.pyAlignFail {
  input {
    String align_records_do_tpy
  }
  command <<<
    AlignRecords.py align-fail \
      ~{align_records_do_tpy}
  >>>
  parameter_meta {
    align_records_do_tpy: ""
  }
}