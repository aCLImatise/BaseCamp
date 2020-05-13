version 1.0

task ExtractCodonAlignment {
  input {
    File alignedAlignedCds
    String alnAlnFormat
    Boolean codonCodonPoses
    File outOutAln
  }
  command <<<
    extract_codon_alignment \
      ~{if defined(alignedAlignedCds) then ("--alignedCDS " +  '"' + alignedAlignedCds + '"') else ""} \
      ~{if defined(alnAlnFormat) then ("--aln_format " +  '"' + alnAlnFormat + '"') else ""} \
      ~{true="--codonPoses" false="" codonCodonPoses} \
      ~{if defined(outOutAln) then ("--outAln " +  '"' + outOutAln + '"') else ""}
  >>>
}