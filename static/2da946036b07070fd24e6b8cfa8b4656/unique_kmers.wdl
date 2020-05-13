version 1.0

task UniqueKmers.py {
  input {
    String kKSize
    String errorErrorRate
    File reportReport
    Boolean streamStreamRecords
    Boolean diagnosticsDiagnostics
    String? inputInputSequenceFilename
  }
  command <<<
    unique-kmers.py \
      ~{inputInputSequenceFilename} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{true="--stream-records" false="" streamStreamRecords} \
      ~{true="--diagnostics" false="" diagnosticsDiagnostics}
  >>>
}