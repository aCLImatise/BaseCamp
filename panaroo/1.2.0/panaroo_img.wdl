version 1.0

task PanarooImg {
  input {
    String treeTree
    String paPa
    String outOutDir
    Boolean dD
    Boolean noNoEssential
    Boolean noNoConstraint
    String modelModel
    String fitFit
    String inInItU1
    String inInItU2
    String inInItV1
    String inInItV2
    String inInItEss
    Boolean verboseVerbose
  }
  command <<<
    panaroo-img \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(paPa) then ("--pa " +  '"' + paPa + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="--no_essential" false="" noNoEssential} \
      ~{true="--no_constraint" false="" noNoConstraint} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(fitFit) then ("--fit " +  '"' + fitFit + '"') else ""} \
      ~{if defined(inInItU1) then ("--init_u1 " +  '"' + inInItU1 + '"') else ""} \
      ~{if defined(inInItU2) then ("--init_u2 " +  '"' + inInItU2 + '"') else ""} \
      ~{if defined(inInItV1) then ("--init_v1 " +  '"' + inInItV1 + '"') else ""} \
      ~{if defined(inInItV2) then ("--init_v2 " +  '"' + inInItV2 + '"') else ""} \
      ~{if defined(inInItEss) then ("--init_ess " +  '"' + inInItEss + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}