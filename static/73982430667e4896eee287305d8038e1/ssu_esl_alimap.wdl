version 1.0

task SsuEslAlimap {
  input {
    Boolean qQ
    String maskMaskA2a
    String maskMaskA2rf
    String maskMaskRf2a
    String maskMaskRf2rf
    String submapSubmap
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
  }
  command <<<
    ssu-esl-alimap \
      ~{true="-q" false="" qQ} \
      ~{if defined(maskMaskA2a) then ("--mask-a2a " +  '"' + maskMaskA2a + '"') else ""} \
      ~{if defined(maskMaskA2rf) then ("--mask-a2rf " +  '"' + maskMaskA2rf + '"') else ""} \
      ~{if defined(maskMaskRf2a) then ("--mask-rf2a " +  '"' + maskMaskRf2a + '"') else ""} \
      ~{if defined(maskMaskRf2rf) then ("--mask-rf2rf " +  '"' + maskMaskRf2rf + '"') else ""} \
      ~{if defined(submapSubmap) then ("--submap " +  '"' + submapSubmap + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna}
  >>>
}