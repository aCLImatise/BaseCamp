version 1.0

task EslAlimask {
  input {
    String oO
    Boolean qQ
    Boolean smallSmall
    String inInFormat
    String outOutFormat
    String fFMaskRf
    String fFMaskAll
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    Boolean tTRf
    Boolean tTRMins
    String gapGapThresh
    String gGMaskRf
    String gGMaskAll
    String pfrPfrAct
    String pPThresh
    String pPAvg
    String ppPpCons
    Boolean pPAllGapOk
    String pmPmAskRf
    String pmPmAskAll
    Boolean keepKeepIns
  }
  command <<<
    esl-alimask \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{true="--small" false="" smallSmall} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(fFMaskRf) then ("--fmask-rf " +  '"' + fFMaskRf + '"') else ""} \
      ~{if defined(fFMaskAll) then ("--fmask-all " +  '"' + fFMaskAll + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--t-rf" false="" tTRf} \
      ~{true="--t-rmins" false="" tTRMins} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(gGMaskRf) then ("--gmask-rf " +  '"' + gGMaskRf + '"') else ""} \
      ~{if defined(gGMaskAll) then ("--gmask-all " +  '"' + gGMaskAll + '"') else ""} \
      ~{if defined(pfrPfrAct) then ("--pfract " +  '"' + pfrPfrAct + '"') else ""} \
      ~{if defined(pPThresh) then ("--pthresh " +  '"' + pPThresh + '"') else ""} \
      ~{if defined(pPAvg) then ("--pavg " +  '"' + pPAvg + '"') else ""} \
      ~{if defined(ppPpCons) then ("--ppcons " +  '"' + ppPpCons + '"') else ""} \
      ~{true="--pallgapok" false="" pPAllGapOk} \
      ~{if defined(pmPmAskRf) then ("--pmask-rf " +  '"' + pmPmAskRf + '"') else ""} \
      ~{if defined(pmPmAskAll) then ("--pmask-all " +  '"' + pmPmAskAll + '"') else ""} \
      ~{true="--keepins" false="" keepKeepIns}
  >>>
}