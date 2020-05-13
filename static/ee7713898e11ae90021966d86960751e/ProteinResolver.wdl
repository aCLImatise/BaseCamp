version 1.0

task ProteinResolver {
  input {
    File fastFastA
    Boolean inIn
    File inInPath
    File designDesign
    File proteinProteinGroups
    File peptidePeptideTable
    File proteinProteinTable
    Boolean resolverResolver
    Boolean resolverResolver
    Boolean resolverResolver
    Boolean designerDesigner
    Boolean designerDesigner
    Boolean designerDesigner
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ProteinResolver \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="-in" false="" inIn} \
      ~{if defined(inInPath) then ("-in_path " +  '"' + inInPath + '"') else ""} \
      ~{if defined(designDesign) then ("-design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(proteinProteinGroups) then ("-protein_groups " +  '"' + proteinProteinGroups + '"') else ""} \
      ~{if defined(peptidePeptideTable) then ("-peptide_table " +  '"' + peptidePeptideTable + '"') else ""} \
      ~{if defined(proteinProteinTable) then ("-protein_table " +  '"' + proteinProteinTable + '"') else ""} \
      ~{true="-resolver" false="" resolverResolver} \
      ~{true="-resolver" false="" resolverResolver} \
      ~{true="-resolver" false="" resolverResolver} \
      ~{true="-designer" false="" designerDesigner} \
      ~{true="-designer" false="" designerDesigner} \
      ~{true="-designer" false="" designerDesigner} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}