version 1.0

task RsemTbam2gbam {
  input {
    String pP
    String? referenceReferenceName
    String? unsortedUnsortedTranscriptBamInput
    String? genomeGenomeBamOutput
  }
  command <<<
    rsem-tbam2gbam \
      ~{referenceReferenceName} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{unsortedUnsortedTranscriptBamInput} \
      ~{genomeGenomeBamOutput}
  >>>
}