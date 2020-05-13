version 1.0

task Mvp {
  input {
    String outfileOutfile
    String referenceReference
    String motifMotifFile
    String motifMotifList
    String sequenceSequenceType
    String? inInFile
  }
  command <<<
    mvp \
      ~{inInFile} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(motifMotifFile) then ("--motif-file " +  '"' + motifMotifFile + '"') else ""} \
      ~{if defined(motifMotifList) then ("--motif-list " +  '"' + motifMotifList + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence-type " +  '"' + sequenceSequenceType + '"') else ""}
  >>>
}