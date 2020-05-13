version 1.0

task FilterCorrectedReads.pyInputFilename {
  input {
    String? coverageCoverageThreshold
    String? inputInputFilename
  }
  command <<<
    filter_corrected_reads.py input_filename \
      ~{coverageCoverageThreshold} \
      ~{inputInputFilename}
  >>>
}