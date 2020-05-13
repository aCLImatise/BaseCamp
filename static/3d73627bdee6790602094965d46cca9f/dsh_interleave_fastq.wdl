version 1.0

task DshInterleaveFastq {
  input {
    Boolean pairedPairedFile
    Boolean unpairedUnpairedFile
  }
  command <<<
    dsh-interleave-fastq \
      ~{true="--paired-file" false="" pairedPairedFile} \
      ~{true="--unpaired-file" false="" unpairedUnpairedFile}
  >>>
}