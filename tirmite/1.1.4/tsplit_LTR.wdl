version 1.0

task TsplitLTR {
  input {
    String inInFile
    String prefixPrefix
    String outdirOutdir
    String splitSplitMode
    Boolean keepKeepTemp
    Boolean verboseVerbose
    Int maxMaxDist
    Int miniMiniD
    Int minMinTerm
    Int minMinSeed
    String diagDiagFactor
    String methodMethod
  }
  command <<<
    tsplit-LTR \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(splitSplitMode) then ("--splitmode " +  '"' + splitSplitMode + '"') else ""} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minid " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(minMinTerm) then ("--minterm " +  '"' + minMinTerm + '"') else ""} \
      ~{if defined(minMinSeed) then ("--minseed " +  '"' + minMinSeed + '"') else ""} \
      ~{if defined(diagDiagFactor) then ("--diagfactor " +  '"' + diagDiagFactor + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""}
  >>>
}