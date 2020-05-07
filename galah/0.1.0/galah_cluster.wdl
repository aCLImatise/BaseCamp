version 1.0

task GalahCluster {
  input {
    String aniAni
    String checkCheckMTabTable
    String genomeGenomeFastADirectory
    String genomeGenomeFastAExtension
    String genomeGenomeFastAFiles
    String genomeGenomeFastAList
    Int maxMaxContamination
    Int minMinCompleteness
    String prePreThresholdAni
    String threadsThreads
    String? optionsOptions
  }
  command <<<
    galah cluster \
      ~{optionsOptions} \
      ~{if defined(aniAni) then ("--ani " +  '"' + aniAni + '"') else ""} \
      ~{if defined(checkCheckMTabTable) then ("--checkm-tab-table " +  '"' + checkCheckMTabTable + '"') else ""} \
      ~{if defined(genomeGenomeFastADirectory) then ("--genome-fasta-directory " +  '"' + genomeGenomeFastADirectory + '"') else ""} \
      ~{if defined(genomeGenomeFastAExtension) then ("--genome-fasta-extension " +  '"' + genomeGenomeFastAExtension + '"') else ""} \
      ~{if defined(genomeGenomeFastAFiles) then ("--genome-fasta-files " +  '"' + genomeGenomeFastAFiles + '"') else ""} \
      ~{if defined(genomeGenomeFastAList) then ("--genome-fasta-list " +  '"' + genomeGenomeFastAList + '"') else ""} \
      ~{if defined(maxMaxContamination) then ("--max-contamination " +  '"' + maxMaxContamination + '"') else ""} \
      ~{if defined(minMinCompleteness) then ("--min-completeness " +  '"' + minMinCompleteness + '"') else ""} \
      ~{if defined(prePreThresholdAni) then ("--prethreshold-ani " +  '"' + prePreThresholdAni + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}