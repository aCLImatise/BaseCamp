version 1.0

task Fastq2bam {
  input {
    Int cC
    Int cC
    Int uU
    Int uU
    Int zZ
    Int zZ
    Boolean xX
  }
  command <<<
    fastq2bam \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="-X" false="" xX}
  >>>
}