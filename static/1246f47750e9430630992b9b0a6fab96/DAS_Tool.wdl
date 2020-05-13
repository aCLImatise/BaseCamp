version 1.0

task DASTool {
  input {
    String lL
    Boolean binsBins
    Boolean contigsContigs
    Boolean outputOutputBasename
    Boolean labelsLabels
    Boolean searchSearchEngine
    Boolean writeWriteBinEvals
    Boolean createCreatePlots
    Boolean writeWriteBins
    Boolean writeWriteUnbinned
    Boolean proteinsProteins
    Boolean threadsThreads
    Boolean scoreScoreThreshold
    Boolean duplicateDuplicatePenalty
    Boolean megaMegaBinPenalty
    Boolean dbDbDirectory
    Boolean resumeResume
    Boolean debugDebug
  }
  command <<<
    DAS_Tool \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="--bins" false="" binsBins} \
      ~{true="--contigs" false="" contigsContigs} \
      ~{true="--outputbasename" false="" outputOutputBasename} \
      ~{true="--labels" false="" labelsLabels} \
      ~{true="--search_engine" false="" searchSearchEngine} \
      ~{true="--write_bin_evals" false="" writeWriteBinEvals} \
      ~{true="--create_plots" false="" createCreatePlots} \
      ~{true="--write_bins" false="" writeWriteBins} \
      ~{true="--write_unbinned" false="" writeWriteUnbinned} \
      ~{true="--proteins" false="" proteinsProteins} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--score_threshold" false="" scoreScoreThreshold} \
      ~{true="--duplicate_penalty" false="" duplicateDuplicatePenalty} \
      ~{true="--megabin_penalty" false="" megaMegaBinPenalty} \
      ~{true="--db_directory" false="" dbDbDirectory} \
      ~{true="--resume" false="" resumeResume} \
      ~{true="--debug" false="" debugDebug}
  >>>
}