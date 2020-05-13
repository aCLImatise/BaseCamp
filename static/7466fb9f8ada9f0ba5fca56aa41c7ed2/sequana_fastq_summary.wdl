version 1.0

task SequanaFastqSummary {
  input {
    String patternPattern
  }
  command <<<
    sequana_fastq_summary \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""}
  >>>
}