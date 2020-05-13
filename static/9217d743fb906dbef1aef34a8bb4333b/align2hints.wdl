version 1.0

task Align2hints.pl {
  input {
    Boolean skipSkipAlignmentOut
    Boolean inIn
    Boolean outOut
    String cdsCdsPartCutOff
    String maxMaxIntronLen
    String minMinIntronLen
    String priorityPriority
    String prgPrg
    String sourceSource
    Boolean cdsCds
    String genomeGenomeFile
  }
  command <<<
    align2hints.pl \
      ~{true="-skipalignmentout" false="" skipSkipAlignmentOut} \
      ~{true="--in" false="" inIn} \
      ~{true="--out" false="" outOut} \
      ~{if defined(cdsCdsPartCutOff) then ("--CDSpart_cutoff " +  '"' + cdsCdsPartCutOff + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--maxintronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--minintronlen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{if defined(prgPrg) then ("--prg " +  '"' + prgPrg + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{true="--CDS" false="" cdsCds} \
      ~{if defined(genomeGenomeFile) then ("--genome_file " +  '"' + genomeGenomeFile + '"') else ""}
  >>>
}