version 1.0

task SequanaMapping {
  input {
    File fileFile1
    File fileFile2
    String referenceReference
    String threadThread
    Boolean pacPacBio
    Boolean useUseSambaMba
  }
  command <<<
    sequana_mapping \
      ~{if defined(fileFile1) then ("--file1 " +  '"' + fileFile1 + '"') else ""} \
      ~{if defined(fileFile2) then ("--file2 " +  '"' + fileFile2 + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{true="--pacbio" false="" pacPacBio} \
      ~{true="--use-sambamba" false="" useUseSambaMba}
  >>>
}