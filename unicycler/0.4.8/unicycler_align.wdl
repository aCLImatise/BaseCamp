version 1.0

task UnicyclerAlign {
  input {
    String refRef
    String readsReads
    String samSam
    String contaminationContamination
    String scoresScores
    String lowLowScore
    Boolean keepKeepBad
    String sensitivitySensitivity
    String threadsThreads
    String verbosityVerbosity
    Int minMinLen
    String allowedAllowedOverlap
  }
  command <<<
    unicycler_align \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(samSam) then ("--sam " +  '"' + samSam + '"') else ""} \
      ~{if defined(contaminationContamination) then ("--contamination " +  '"' + contaminationContamination + '"') else ""} \
      ~{if defined(scoresScores) then ("--scores " +  '"' + scoresScores + '"') else ""} \
      ~{if defined(lowLowScore) then ("--low_score " +  '"' + lowLowScore + '"') else ""} \
      ~{true="--keep_bad" false="" keepKeepBad} \
      ~{if defined(sensitivitySensitivity) then ("--sensitivity " +  '"' + sensitivitySensitivity + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(allowedAllowedOverlap) then ("--allowed_overlap " +  '"' + allowedAllowedOverlap + '"') else ""}
  >>>
}