version 1.0

task CreateSnpReferenceSeq.py {
  input {
    Boolean forceForce
    File snpSnpListFile
    File outputOutput
    Boolean vV
    String? referenceReferenceFile
  }
  command <<<
    create_snp_reference_seq.py \
      ~{referenceReferenceFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(snpSnpListFile) then ("--snpListFile " +  '"' + snpSnpListFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}