version 1.0

task Unicycler {
  input {
    Boolean helpHelpAll
    String unpairedUnpaired
    String longLong
    String outOut
    String verbosityVerbosity
    Int minMinFastALength
    String keepKeep
    Boolean vcfVcf
    String threadsThreads
    String modeMode
    String linearLinearSeqs
  }
  command <<<
    unicycler \
      ~{true="--help_all" false="" helpHelpAll} \
      ~{if defined(unpairedUnpaired) then ("--unpaired " +  '"' + unpairedUnpaired + '"') else ""} \
      ~{if defined(longLong) then ("--long " +  '"' + longLong + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(minMinFastALength) then ("--min_fasta_length " +  '"' + minMinFastALength + '"') else ""} \
      ~{if defined(keepKeep) then ("--keep " +  '"' + keepKeep + '"') else ""} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(linearLinearSeqs) then ("--linear_seqs " +  '"' + linearLinearSeqs + '"') else ""}
  >>>
}