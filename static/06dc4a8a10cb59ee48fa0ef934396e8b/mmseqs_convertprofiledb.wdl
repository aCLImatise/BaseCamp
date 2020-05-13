version 1.0

task MmseqsConvertprofiledb {
  input {
    Boolean profileProfileType
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs convertprofiledb \
      ~{true="--profile-type" false="" profileProfileType} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}