version 1.0

task Breakseq2GenBplib.py {
  input {
    String referenceReference
    String outputOutput
    Array[String]+ chromosomesChromosomes
    String logLog
    String bpBpLibGff
    String junctionJunctionLength
    Boolean formatFormatVersion
  }
  command <<<
    breakseq2_gen_bplib.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(bpBpLibGff) then ("--bplib_gff " +  '"' + bpBpLibGff + '"') else ""} \
      ~{if defined(junctionJunctionLength) then ("--junction_length " +  '"' + junctionJunctionLength + '"') else ""} \
      ~{true="--format_version" false="" formatFormatVersion}
  >>>
}