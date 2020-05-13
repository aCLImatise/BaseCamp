version 1.0

task Metagenomics {
  input {
    String threadsThreads
    String formatFormat
    String numNumPrimaryAssign
    String indexIndex
    String readReadType
    String rightRightFq
    String leftLeftFq
    String unpairedUnpairedReads
  }
  command <<<
    metagenomics \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(numNumPrimaryAssign) then ("--num_primary_assign " +  '"' + numNumPrimaryAssign + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(readReadType) then ("--read_type " +  '"' + readReadType + '"') else ""} \
      ~{if defined(rightRightFq) then ("--right_fq " +  '"' + rightRightFq + '"') else ""} \
      ~{if defined(leftLeftFq) then ("--left_fq " +  '"' + leftLeftFq + '"') else ""} \
      ~{if defined(unpairedUnpairedReads) then ("--unpaired_reads " +  '"' + unpairedUnpairedReads + '"') else ""}
  >>>
}