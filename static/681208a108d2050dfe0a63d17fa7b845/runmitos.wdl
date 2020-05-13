version 1.0

task Runmitos.py {
  input {
    File inputInput
    String fastFastA
    String codeCode
    String outdirOutdir
    Boolean linearLinear
    String refseqRefseqVer
    String refRefDir
    String protProt
    String trnaTrna
    String rrnaRrna
    Int intronIntron
    String orOrIl
    String orOrIh
    String fiFiNovL
    String circCircRot
    Boolean bestBest
    String fragFragFac
    String fragFragOvl
    Boolean noNoPlots
    String evalueEvalue
    String cutCutOff
    String clipClipFac
    Boolean ncbiNcbiCode
    Boolean alAlArab
    Boolean oldOldStst
    Boolean locLocAndGloC
    String ncNcEv
    Boolean sensitiveSensitive
    String maxMaxTrnaOvl
    String maxMaxRrnaOvl
    Boolean debugDebug
    String jsonJson
  }
  command <<<
    runmitos.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(codeCode) then ("--code " +  '"' + codeCode + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--linear" false="" linearLinear} \
      ~{if defined(refseqRefseqVer) then ("--refseqver " +  '"' + refseqRefseqVer + '"') else ""} \
      ~{if defined(refRefDir) then ("--refdir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(protProt) then ("--prot " +  '"' + protProt + '"') else ""} \
      ~{if defined(trnaTrna) then ("--trna " +  '"' + trnaTrna + '"') else ""} \
      ~{if defined(rrnaRrna) then ("--rrna " +  '"' + rrnaRrna + '"') else ""} \
      ~{if defined(intronIntron) then ("--intron " +  '"' + intronIntron + '"') else ""} \
      ~{if defined(orOrIl) then ("--oril " +  '"' + orOrIl + '"') else ""} \
      ~{if defined(orOrIh) then ("--orih " +  '"' + orOrIh + '"') else ""} \
      ~{if defined(fiFiNovL) then ("--finovl " +  '"' + fiFiNovL + '"') else ""} \
      ~{if defined(circCircRot) then ("--circrot " +  '"' + circCircRot + '"') else ""} \
      ~{true="--best" false="" bestBest} \
      ~{if defined(fragFragFac) then ("--fragfac " +  '"' + fragFragFac + '"') else ""} \
      ~{if defined(fragFragOvl) then ("--fragovl " +  '"' + fragFragOvl + '"') else ""} \
      ~{true="--noplots" false="" noNoPlots} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(clipClipFac) then ("--clipfac " +  '"' + clipClipFac + '"') else ""} \
      ~{true="--ncbicode" false="" ncbiNcbiCode} \
      ~{true="--alarab" false="" alAlArab} \
      ~{true="--oldstst" false="" oldOldStst} \
      ~{true="--locandgloc" false="" locLocAndGloC} \
      ~{if defined(ncNcEv) then ("--ncev " +  '"' + ncNcEv + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{if defined(maxMaxTrnaOvl) then ("--maxtrnaovl " +  '"' + maxMaxTrnaOvl + '"') else ""} \
      ~{if defined(maxMaxRrnaOvl) then ("--maxrrnaovl " +  '"' + maxMaxRrnaOvl + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""}
  >>>
}