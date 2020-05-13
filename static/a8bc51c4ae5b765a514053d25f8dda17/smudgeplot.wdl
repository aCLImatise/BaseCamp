version 1.0

task Smudgeplot.pyPlot {
  input {
    String oO
    String qQ
    String lL
    String nN
    String titleTitle
    String nbinsNbins
    String kK
    Boolean homozygousHomozygous
    String? inInFile
  }
  command <<<
    smudgeplot.py plot \
      ~{inInFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(nbinsNbins) then ("-nbins " +  '"' + nbinsNbins + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="--homozygous" false="" homozygousHomozygous}
  >>>
}