version 1.0

task ConcoctCoverageTable.py {
  input {
    String sampleSampleNames
    String? bedBedFile
    String? bamBamFiles
  }
  command <<<
    concoct_coverage_table.py \
      ~{bedBedFile} \
      ~{if defined(sampleSampleNames) then ("--samplenames " +  '"' + sampleSampleNames + '"') else ""} \
      ~{bamBamFiles}
  >>>
}