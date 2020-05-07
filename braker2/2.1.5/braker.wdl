version 1.0

task Braker.pl {
  input {
    Boolean etpEtpMode
    String showShowTargetGff
    Boolean skipSkipAlignmentOut
    File genomeGenome
    Boolean augustusAugustusScriptsPath
    String genemarkGenemarkGtf
    String genemarkGenemarkGtf
    String genemarkGenemarkGtf
    String genemarkGenemarkGtf
    String useUseExisting
    Boolean rR
    Boolean cC
  }
  command <<<
    braker.pl \
      ~{true="--etpmode" false="" etpEtpMode} \
      ~{if defined(showShowTargetGff) then ("--showtargetgff " +  '"' + showShowTargetGff + '"') else ""} \
      ~{true="-skipalignmentout" false="" skipSkipAlignmentOut} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--AUGUSTUS_SCRIPTS_PATH" false="" augustusAugustusScriptsPath} \
      ~{if defined(genemarkGenemarkGtf) then ("--geneMarkGtf " +  '"' + genemarkGenemarkGtf + '"') else ""} \
      ~{if defined(genemarkGenemarkGtf) then ("--geneMarkGtf " +  '"' + genemarkGenemarkGtf + '"') else ""} \
      ~{if defined(genemarkGenemarkGtf) then ("--geneMarkGtf " +  '"' + genemarkGenemarkGtf + '"') else ""} \
      ~{if defined(genemarkGenemarkGtf) then ("--geneMarkGtf " +  '"' + genemarkGenemarkGtf + '"') else ""} \
      ~{if defined(useUseExisting) then ("--useexisting " +  '"' + useUseExisting + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC}
  >>>
}