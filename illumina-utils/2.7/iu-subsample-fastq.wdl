version 1.0

task IuSubsampleFastq {
  input {
    File r1R1
    File r2R2
    File outputOutput1
    File outputOutput2
    Int numNumReads
  }
  command <<<
    iu-subsample-fastq \
      ~{if defined(r1R1) then ("--r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--r2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(outputOutput1) then ("--output1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""}
  >>>
}