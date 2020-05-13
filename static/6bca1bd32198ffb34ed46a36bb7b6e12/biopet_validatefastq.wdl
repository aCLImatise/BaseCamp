version 1.0

task BiopetValidatefastq {
  input {
    String logLogLevel
    File fastq1Fastq1
    File fastq2Fastq2
  }
  command <<<
    biopet-validatefastq \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(fastq1Fastq1) then ("--fastq1 " +  '"' + fastq1Fastq1 + '"') else ""} \
      ~{if defined(fastq2Fastq2) then ("--fastq2 " +  '"' + fastq2Fastq2 + '"') else ""}
  >>>
}