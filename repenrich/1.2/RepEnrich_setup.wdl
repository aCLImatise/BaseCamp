version 1.0

task RepEnrichSetup.py {
  input {
    String nNFragmentsFile1
    String gapGapLength
    String flankingFlankingLength
    String isIsBed
    String? annotationAnnotationFile
    String? genomeGenomeFastA
    String? setupSetupFolder
  }
  command <<<
    RepEnrich_setup.py \
      ~{annotationAnnotationFile} \
      ~{if defined(nNFragmentsFile1) then ("--nfragmentsfile1 " +  '"' + nNFragmentsFile1 + '"') else ""} \
      ~{if defined(gapGapLength) then ("--gaplength " +  '"' + gapGapLength + '"') else ""} \
      ~{if defined(flankingFlankingLength) then ("--flankinglength " +  '"' + flankingFlankingLength + '"') else ""} \
      ~{if defined(isIsBed) then ("--is_bed " +  '"' + isIsBed + '"') else ""} \
      ~{genomeGenomeFastA} \
      ~{setupSetupFolder}
  >>>
}