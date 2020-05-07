version 1.0

task SsuCmcalibrate {
  input {
    String sS
    String forecastForecast
    Boolean devhelpDevhelp
    String expExpCmlGlc
    String expExpCmlLoc
    String expExpHmmLnGlc
    String expExpHmmLnLoc
    String expExpHmmLx
    String expExpFract
    String expExpTailNCGlc
    String expExpTailNCloc
    String expExpTailNHGlc
    String expExpTailNHLoc
    String expExpTailP
    String expExpTailXn
    String expExpBeta
    Boolean expExpNoQdb
    String expExpHFile
    String expExpSFile
    String expExpQqFile
    String expExpFFile
    String filFilN
    String filFilF
    String filFilTau
    Boolean filFilGemIt
    String filFilDFile
    String mxMxSize
  }
  command <<<
    ssu-cmcalibrate \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(forecastForecast) then ("--forecast " +  '"' + forecastForecast + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{if defined(expExpCmlGlc) then ("--exp-cmL-glc " +  '"' + expExpCmlGlc + '"') else ""} \
      ~{if defined(expExpCmlLoc) then ("--exp-cmL-loc " +  '"' + expExpCmlLoc + '"') else ""} \
      ~{if defined(expExpHmmLnGlc) then ("--exp-hmmLn-glc " +  '"' + expExpHmmLnGlc + '"') else ""} \
      ~{if defined(expExpHmmLnLoc) then ("--exp-hmmLn-loc " +  '"' + expExpHmmLnLoc + '"') else ""} \
      ~{if defined(expExpHmmLx) then ("--exp-hmmLx " +  '"' + expExpHmmLx + '"') else ""} \
      ~{if defined(expExpFract) then ("--exp-fract " +  '"' + expExpFract + '"') else ""} \
      ~{if defined(expExpTailNCGlc) then ("--exp-tailn-cglc " +  '"' + expExpTailNCGlc + '"') else ""} \
      ~{if defined(expExpTailNCloc) then ("--exp-tailn-cloc " +  '"' + expExpTailNCloc + '"') else ""} \
      ~{if defined(expExpTailNHGlc) then ("--exp-tailn-hglc " +  '"' + expExpTailNHGlc + '"') else ""} \
      ~{if defined(expExpTailNHLoc) then ("--exp-tailn-hloc " +  '"' + expExpTailNHLoc + '"') else ""} \
      ~{if defined(expExpTailP) then ("--exp-tailp " +  '"' + expExpTailP + '"') else ""} \
      ~{if defined(expExpTailXn) then ("--exp-tailxn " +  '"' + expExpTailXn + '"') else ""} \
      ~{if defined(expExpBeta) then ("--exp-beta " +  '"' + expExpBeta + '"') else ""} \
      ~{true="--exp-no-qdb" false="" expExpNoQdb} \
      ~{if defined(expExpHFile) then ("--exp-hfile " +  '"' + expExpHFile + '"') else ""} \
      ~{if defined(expExpSFile) then ("--exp-sfile " +  '"' + expExpSFile + '"') else ""} \
      ~{if defined(expExpQqFile) then ("--exp-qqfile " +  '"' + expExpQqFile + '"') else ""} \
      ~{if defined(expExpFFile) then ("--exp-ffile " +  '"' + expExpFFile + '"') else ""} \
      ~{if defined(filFilN) then ("--fil-N " +  '"' + filFilN + '"') else ""} \
      ~{if defined(filFilF) then ("--fil-F " +  '"' + filFilF + '"') else ""} \
      ~{if defined(filFilTau) then ("--fil-tau " +  '"' + filFilTau + '"') else ""} \
      ~{true="--fil-gemit" false="" filFilGemIt} \
      ~{if defined(filFilDFile) then ("--fil-dfile " +  '"' + filFilDFile + '"') else ""} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""}
  >>>
}