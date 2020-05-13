version 1.0

task Metaquant {
  input {
    String modeMode
    String sSAmps
    Int intIntFile
    String pepPepColname
    String outfileOutfile
    String funcFuncFile
    String ontologyOntology
    String oboOboPath
    String slimSlimPath
    Boolean slimSlimDown
    Boolean updateUpdateObo
    String taxTaxFile
    String taxTaxColname
    Boolean testTest
    Boolean pairedPaired
    String thresholdThreshold
  }
  command <<<
    metaquant \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(sSAmps) then ("--samps " +  '"' + sSAmps + '"') else ""} \
      ~{if defined(intIntFile) then ("--int_file " +  '"' + intIntFile + '"') else ""} \
      ~{if defined(pepPepColname) then ("--pep_colname " +  '"' + pepPepColname + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(funcFuncFile) then ("--func_file " +  '"' + funcFuncFile + '"') else ""} \
      ~{if defined(ontologyOntology) then ("--ontology " +  '"' + ontologyOntology + '"') else ""} \
      ~{if defined(oboOboPath) then ("--obo_path " +  '"' + oboOboPath + '"') else ""} \
      ~{if defined(slimSlimPath) then ("--slim_path " +  '"' + slimSlimPath + '"') else ""} \
      ~{true="--slim_down" false="" slimSlimDown} \
      ~{true="--update_obo" false="" updateUpdateObo} \
      ~{if defined(taxTaxFile) then ("--tax_file " +  '"' + taxTaxFile + '"') else ""} \
      ~{if defined(taxTaxColname) then ("--tax_colname " +  '"' + taxTaxColname + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}