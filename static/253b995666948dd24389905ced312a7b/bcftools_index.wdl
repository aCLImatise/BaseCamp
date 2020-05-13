version 1.0

task BcftoolsIndex {
  input {
    Boolean csiCsi
    Boolean forceForce
    Int minMinShift
    File outputOutputFile
    Boolean tbiTbi
    Int threadsThreads
    Boolean nNRecords
    Boolean statsStats
  }
  command <<<
    bcftools index \
      ~{true="--csi" false="" csiCsi} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(minMinShift) then ("--min-shift " +  '"' + minMinShift + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--tbi" false="" tbiTbi} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--nrecords" false="" nNRecords} \
      ~{true="--stats" false="" statsStats}
  >>>
}