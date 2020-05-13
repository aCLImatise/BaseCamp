version 1.0

task MocaPlot {
  input {
    String memeMemeDir
    String centriCentriMoDir
    String fimoFimoDirSample
    String fimoFimoDirControl
    String nameName
    Int flankFlankMotif
    Int motifMotif
    String ocOc
    String configurationConfiguration
    Boolean showShowProgress
    String genomeGenomeBuild
  }
  command <<<
    moca plot \
      ~{if defined(memeMemeDir) then ("--meme-dir " +  '"' + memeMemeDir + '"') else ""} \
      ~{if defined(centriCentriMoDir) then ("--centrimo-dir " +  '"' + centriCentriMoDir + '"') else ""} \
      ~{if defined(fimoFimoDirSample) then ("--fimo-dir-sample " +  '"' + fimoFimoDirSample + '"') else ""} \
      ~{if defined(fimoFimoDirControl) then ("--fimo-dir-control " +  '"' + fimoFimoDirControl + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(flankFlankMotif) then ("--flank-motif " +  '"' + flankFlankMotif + '"') else ""} \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(ocOc) then ("--oc " +  '"' + ocOc + '"') else ""} \
      ~{if defined(configurationConfiguration) then ("--configuration " +  '"' + configurationConfiguration + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{if defined(genomeGenomeBuild) then ("--genome-build " +  '"' + genomeGenomeBuild + '"') else ""}
  >>>
}