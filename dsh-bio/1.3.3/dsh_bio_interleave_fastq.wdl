version 1.0

task DshBioInterleaveFastq {
  input {
    Boolean pairedPairedFile
    Boolean unpairedUnpairedFile
  }
  command <<<
    dsh-bio interleave-fastq \
      ~{true="--paired-file" false="" pairedPairedFile} \
      ~{true="--unpaired-file" false="" unpairedUnpairedFile}
  >>>
}