version 1.0

task PhyluceUtilitiesUnmixFastaReads {
  input {
    String? mixed_reads
  }
  command <<<
    phyluce_utilities_unmix_fasta_reads \
      ~{if defined(mixed_reads) then ("--mixed-reads " +  '"' + mixed_reads + '"') else ""}
  >>>
  parameter_meta {
    mixed_reads: ""
  }
}