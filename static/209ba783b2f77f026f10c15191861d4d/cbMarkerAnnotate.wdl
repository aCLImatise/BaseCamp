version 1.0

task CbMarkerAnnotate {
  input {
    Boolean debugDebug
    String hprdHprd
    String hgncHgnc
    String sSFarI
    String omimOmim
    String cosmicCosmic
    String hpoHpo
    String lmdLmd
    String mgiMgiOrtho
    String eurEurExpress
    String brainBrainSpanMouseDev
  }
  command <<<
    cbMarkerAnnotate \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(hprdHprd) then ("--hprd " +  '"' + hprdHprd + '"') else ""} \
      ~{if defined(hgncHgnc) then ("--hgnc " +  '"' + hgncHgnc + '"') else ""} \
      ~{if defined(sSFarI) then ("--sfari " +  '"' + sSFarI + '"') else ""} \
      ~{if defined(omimOmim) then ("--omim " +  '"' + omimOmim + '"') else ""} \
      ~{if defined(cosmicCosmic) then ("--cosmic " +  '"' + cosmicCosmic + '"') else ""} \
      ~{if defined(hpoHpo) then ("--hpo " +  '"' + hpoHpo + '"') else ""} \
      ~{if defined(lmdLmd) then ("--lmd " +  '"' + lmdLmd + '"') else ""} \
      ~{if defined(mgiMgiOrtho) then ("--mgiOrtho " +  '"' + mgiMgiOrtho + '"') else ""} \
      ~{if defined(eurEurExpress) then ("--eurexpress " +  '"' + eurEurExpress + '"') else ""} \
      ~{if defined(brainBrainSpanMouseDev) then ("--brainspanMouseDev " +  '"' + brainBrainSpanMouseDev + '"') else ""}
  >>>
}