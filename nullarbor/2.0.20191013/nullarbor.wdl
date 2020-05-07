version 1.0

task Nullarbor.pl {
  input {
    String nameName
    File refRef
    File inputInput
    String outdirOutdir
    String modeMode
    Int cpusCpus
    Boolean forceForce
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean checkCheck
    Boolean runRun
    File confConf
    Int gGCode
    Boolean trimTrim
    String mlstMlst
    String minMinCtg
    Boolean prefillPrefill
    Boolean linkLinkCmd
    String snippySnippyOpt
    String roarRoarYOpt
    String maskMask
    Boolean autoAuto
    String assemblerAssembler
    String assemblerAssemblerOpt
    String treeTreeBuilder
    String treeTreeBuilderOpt
    String taxTaxOneR
    String taxTaxOneROpt
    String annotatorAnnotator
    String annotatorAnnotatorOpt
  }
  command <<<
    nullarbor.pl \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--run" false="" runRun} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(gGCode) then ("--gcode " +  '"' + gGCode + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{if defined(mlstMlst) then ("--mlst " +  '"' + mlstMlst + '"') else ""} \
      ~{if defined(minMinCtg) then ("--minctg " +  '"' + minMinCtg + '"') else ""} \
      ~{true="--prefill" false="" prefillPrefill} \
      ~{true="--link-cmd" false="" linkLinkCmd} \
      ~{if defined(snippySnippyOpt) then ("--snippy_opt " +  '"' + snippySnippyOpt + '"') else ""} \
      ~{if defined(roarRoarYOpt) then ("--roary_opt " +  '"' + roarRoarYOpt + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{true="--auto" false="" autoAuto} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{if defined(assemblerAssemblerOpt) then ("--assembler-opt " +  '"' + assemblerAssemblerOpt + '"') else ""} \
      ~{if defined(treeTreeBuilder) then ("--treebuilder " +  '"' + treeTreeBuilder + '"') else ""} \
      ~{if defined(treeTreeBuilderOpt) then ("--treebuilder-opt " +  '"' + treeTreeBuilderOpt + '"') else ""} \
      ~{if defined(taxTaxOneR) then ("--taxoner " +  '"' + taxTaxOneR + '"') else ""} \
      ~{if defined(taxTaxOneROpt) then ("--taxoner-opt " +  '"' + taxTaxOneROpt + '"') else ""} \
      ~{if defined(annotatorAnnotator) then ("--annotator " +  '"' + annotatorAnnotator + '"') else ""} \
      ~{if defined(annotatorAnnotatorOpt) then ("--annotator-opt " +  '"' + annotatorAnnotatorOpt + '"') else ""}
  >>>
}