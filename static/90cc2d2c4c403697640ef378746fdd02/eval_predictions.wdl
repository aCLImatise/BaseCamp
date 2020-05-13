version 1.0

task EvalPredictions {
  input {
    String lL
    String nucleotideNucleotide
    String nucleotideNucleotide
    String approximateApproximate
    String correlationCorrelation
    String exonExon
    String exonExon
    String proportionProportion
    String proportionProportion
    String proportionProportion
    String missedMissed
    String proportionProportion
    String proportionProportion
    String proportionProportion
    String wrongWrong
    String rR
    String pP
    String lL
    String fF
    String dD
    String nN
  }
  command <<<
    eval_predictions \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nucleotideNucleotide) then ("- nucleotide " +  '"' + nucleotideNucleotide + '"') else ""} \
      ~{if defined(nucleotideNucleotide) then ("- nucleotide " +  '"' + nucleotideNucleotide + '"') else ""} \
      ~{if defined(approximateApproximate) then ("- approximate " +  '"' + approximateApproximate + '"') else ""} \
      ~{if defined(correlationCorrelation) then ("- correlation " +  '"' + correlationCorrelation + '"') else ""} \
      ~{if defined(exonExon) then ("- exon " +  '"' + exonExon + '"') else ""} \
      ~{if defined(exonExon) then ("- exon " +  '"' + exonExon + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(missedMissed) then ("- missed " +  '"' + missedMissed + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(proportionProportion) then ("- proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(wrongWrong) then ("- wrong " +  '"' + wrongWrong + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}