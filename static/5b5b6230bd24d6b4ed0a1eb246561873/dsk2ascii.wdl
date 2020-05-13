version 1.0

task Dsk2ascii {
  input {
    Boolean cC
    Boolean fastFastA
    Boolean fastFastQ
    Boolean fileFile
    Boolean outOut
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    dsk2ascii \
      ~{true="-c" false="" cC} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-file" false="" fileFile} \
      ~{true="-out" false="" outOut} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}