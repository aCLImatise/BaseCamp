version 1.0

task Blastbesties {
  input {
    String blastBlastAVb
    String blastBlastBva
    Int minMinLen
    String evalEval
    String bitBitScore
    String outfileOutfile
    String outdirOutdir
  }
  command <<<
    blastbesties \
      ~{if defined(blastBlastAVb) then ("--blastAvB " +  '"' + blastBlastAVb + '"') else ""} \
      ~{if defined(blastBlastBva) then ("--blastBvA " +  '"' + blastBlastBva + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(evalEval) then ("--eVal " +  '"' + evalEval + '"') else ""} \
      ~{if defined(bitBitScore) then ("--bitScore " +  '"' + bitBitScore + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}