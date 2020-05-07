version 1.0

task FlashLFQ {
  input {
    Boolean idtIdt
    Boolean repRep
    Boolean silSil
    Boolean outOut
    Boolean norNor
    Boolean ppmPpm
    Boolean isoIso
    Boolean intInt
    Boolean nisNis
    Boolean chgChg
    Boolean thrThr
    Boolean mbrMbr
    Boolean mrtMrt
    Boolean rmcRmc
    Boolean bayBay
    Boolean ctrCtr
    Boolean fccFcc
    Boolean mcmMcm
    Boolean burBur
    Boolean shaSha
    Boolean rnsRns
  }
  command <<<
    FlashLFQ \
      ~{true="--idt" false="" idtIdt} \
      ~{true="--rep" false="" repRep} \
      ~{true="--sil" false="" silSil} \
      ~{true="--out" false="" outOut} \
      ~{true="--nor" false="" norNor} \
      ~{true="--ppm" false="" ppmPpm} \
      ~{true="--iso" false="" isoIso} \
      ~{true="--int" false="" intInt} \
      ~{true="--nis" false="" nisNis} \
      ~{true="--chg" false="" chgChg} \
      ~{true="--thr" false="" thrThr} \
      ~{true="--mbr" false="" mbrMbr} \
      ~{true="--mrt" false="" mrtMrt} \
      ~{true="--rmc" false="" rmcRmc} \
      ~{true="--bay" false="" bayBay} \
      ~{true="--ctr" false="" ctrCtr} \
      ~{true="--fcc" false="" fccFcc} \
      ~{true="--mcm" false="" mcmMcm} \
      ~{true="--bur" false="" burBur} \
      ~{true="--sha" false="" shaSha} \
      ~{true="--rns" false="" rnsRns}
  >>>
}