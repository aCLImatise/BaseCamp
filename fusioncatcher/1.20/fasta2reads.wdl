version 1.0

task Fasta2reads.py {
  input {
    String stepStep
    String gapGap
    Int lengthLength
    String snpSnp
  }
  command <<<
    fasta2reads.py \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""}
  >>>
}