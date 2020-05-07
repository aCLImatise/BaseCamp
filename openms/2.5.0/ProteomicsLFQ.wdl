version 1.0

task ProteomicsLFQ {
  input {
    File inIn
    File idsIds
    File designDesign
    File fastFastA
    File outOut
    File outOutMsStats
    File outOutCXml
    String proteinProteinFdr
    String psmPsmFdr
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean centroidCentroidIng
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean peptidePeptideQuantification
    Boolean alignmentAlignment
    Boolean alignmentAlignment
    Boolean alignmentAlignment
    Boolean alignmentAlignment
    Boolean alignmentAlignment
    Boolean alignmentAlignment
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean linkingLinking
    Boolean proteinProteinQuantification
    Boolean proteinProteinQuantification
    Boolean proteinProteinQuantification
    Boolean proteinProteinQuantification
    Boolean proteinProteinQuantification
    Boolean proteinProteinQuantification
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ProteomicsLFQ \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idsIds) then ("-ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(designDesign) then ("-design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutMsStats) then ("-out_msstats " +  '"' + outOutMsStats + '"') else ""} \
      ~{if defined(outOutCXml) then ("-out_cxml " +  '"' + outOutCXml + '"') else ""} \
      ~{if defined(proteinProteinFdr) then ("-proteinFDR " +  '"' + proteinProteinFdr + '"') else ""} \
      ~{if defined(psmPsmFdr) then ("-psmFDR " +  '"' + psmPsmFdr + '"') else ""} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-Centroiding" false="" centroidCentroidIng} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-PeptideQuantification" false="" peptidePeptideQuantification} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Alignment" false="" alignmentAlignment} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-Linking" false="" linkingLinking} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{true="-ProteinQuantification" false="" proteinProteinQuantification} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}