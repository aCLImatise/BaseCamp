version 1.0

task Exonpairs {
  input {
    Int minMinIntron
    Int maxMaxIntron
    Int einEinItLength
    Int etermEtermLength
    Int exonExonLength
    Float intronIntronScore
    Float einEinItScore
    Float etermEtermScore
    Float exonExonScore
    Float pairPairScore
    Int flankFlankLength
    Boolean lcLcMask
    String? hmmHmmFile
    String? fastFastAFile
  }
  command <<<
    exonpairs \
      ~{hmmHmmFile} \
      ~{if defined(minMinIntron) then ("-min-intron " +  '"' + minMinIntron + '"') else ""} \
      ~{if defined(maxMaxIntron) then ("-max-intron " +  '"' + maxMaxIntron + '"') else ""} \
      ~{if defined(einEinItLength) then ("-einit-length " +  '"' + einEinItLength + '"') else ""} \
      ~{if defined(etermEtermLength) then ("-eterm-length " +  '"' + etermEtermLength + '"') else ""} \
      ~{if defined(exonExonLength) then ("-exon-length " +  '"' + exonExonLength + '"') else ""} \
      ~{if defined(intronIntronScore) then ("-intron-score " +  '"' + intronIntronScore + '"') else ""} \
      ~{if defined(einEinItScore) then ("-einit-score " +  '"' + einEinItScore + '"') else ""} \
      ~{if defined(etermEtermScore) then ("-eterm-score " +  '"' + etermEtermScore + '"') else ""} \
      ~{if defined(exonExonScore) then ("-exon-score " +  '"' + exonExonScore + '"') else ""} \
      ~{if defined(pairPairScore) then ("-pair-score " +  '"' + pairPairScore + '"') else ""} \
      ~{if defined(flankFlankLength) then ("-flank-length " +  '"' + flankFlankLength + '"') else ""} \
      ~{true="-lcmask" false="" lcLcMask} \
      ~{fastFastAFile}
  >>>
}