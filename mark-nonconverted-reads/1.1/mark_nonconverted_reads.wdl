version 1.0

task MarkNonconvertedReads.py {
  input {
    String referenceReference
    String bamBam
    String outOut
    String cCCount
    Boolean flagFlagReads
  }
  command <<<
    mark-nonconverted-reads.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(cCCount) then ("--c_count " +  '"' + cCCount + '"') else ""} \
      ~{true="--flag_reads" false="" flagFlagReads}
  >>>
}