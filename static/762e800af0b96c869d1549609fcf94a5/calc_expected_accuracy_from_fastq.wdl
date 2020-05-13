version 1.0

task CalcExpectedAccuracyFromFastq.py {
  input {
    String qvQvTrim5
    String qvQvTrim3
    String? fastFastQFilename
    String? outputOutputFilename
  }
  command <<<
    calc_expected_accuracy_from_fastq.py \
      ~{fastFastQFilename} \
      ~{if defined(qvQvTrim5) then ("--qv_trim_5 " +  '"' + qvQvTrim5 + '"') else ""} \
      ~{if defined(qvQvTrim3) then ("--qv_trim_3 " +  '"' + qvQvTrim3 + '"') else ""} \
      ~{outputOutputFilename}
  >>>
}