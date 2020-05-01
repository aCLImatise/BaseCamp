version 1.0

task FEELncPipeline.sh {
  input {
    String candidateCandidate
    String referenceReference
    String genomeGenome
    String outOutName
    String outdirOutdir
  }
  command <<<
    FEELnc_pipeline.sh \
      ~{if defined(candidateCandidate) then ("--candidate " +  '"' + candidateCandidate + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}