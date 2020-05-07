version 1.0

task IntronExonReads.py {
  input {
    String gffGff
    String bamBam
    Boolean strandedStranded
    String processesProcesses
    Boolean verboseVerbose
  }
  command <<<
    intron_exon_reads.py \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}