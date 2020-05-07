version 1.0

task AnviScriptGetCoverageFromBam {
  input {
    String bamBamFile
    String contigContigName
    String contigsContigsOfInterest
    String collectionCollectionTxt
    String methodMethod
    String outputOutput
    Boolean skipSkipContigsCheck
  }
  command <<<
    anvi-script-get-coverage-from-bam \
      ~{if defined(bamBamFile) then ("--bam-file " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(contigContigName) then ("--contig-name " +  '"' + contigContigName + '"') else ""} \
      ~{if defined(contigsContigsOfInterest) then ("--contigs-of-interest " +  '"' + contigsContigsOfInterest + '"') else ""} \
      ~{if defined(collectionCollectionTxt) then ("--collection-txt " +  '"' + collectionCollectionTxt + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--skip-contigs-check" false="" skipSkipContigsCheck}
  >>>
}