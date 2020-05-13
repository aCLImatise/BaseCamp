version 1.0

task AverageNucleotideIdentity.py {
  input {
    String outdirOutdir
    String inInDir
    Boolean verboseVerbose
    Boolean forceForce
    String fragFragSize
    String logLogFile
    Boolean skipSkipNucMer
    Boolean skipSkipBlastn
    Boolean noNoClobber
    Boolean noNoCompress
    Boolean graphicsGraphics
    String gGFormat
    String gGMethod
    String labelsLabels
    String classesClasses
    String methodMethod
    String schedulerScheduler
    String workersWorkers
    String sgeSgeGroupSize
    String sgeSgeArgs
    Boolean maxMaxMatch
    String nucNucMerExe
    String filterFilterExe
    String blastnBlastnExe
    String makeMakeBlastDbExe
    String blastBlastAllExe
    String formatFormatDbExe
    Boolean writeWriteExcel
    Boolean reReRender
    String subsampleSubsample
    String seedSeed
    String jobJobPrefix
  }
  command <<<
    average_nucleotide_identity.py \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(fragFragSize) then ("--fragsize " +  '"' + fragFragSize + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--skip_nucmer" false="" skipSkipNucMer} \
      ~{true="--skip_blastn" false="" skipSkipBlastn} \
      ~{true="--noclobber" false="" noNoClobber} \
      ~{true="--nocompress" false="" noNoCompress} \
      ~{true="--graphics" false="" graphicsGraphics} \
      ~{if defined(gGFormat) then ("--gformat " +  '"' + gGFormat + '"') else ""} \
      ~{if defined(gGMethod) then ("--gmethod " +  '"' + gGMethod + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(classesClasses) then ("--classes " +  '"' + classesClasses + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{if defined(workersWorkers) then ("--workers " +  '"' + workersWorkers + '"') else ""} \
      ~{if defined(sgeSgeGroupSize) then ("--SGEgroupsize " +  '"' + sgeSgeGroupSize + '"') else ""} \
      ~{if defined(sgeSgeArgs) then ("--SGEargs " +  '"' + sgeSgeArgs + '"') else ""} \
      ~{true="--maxmatch" false="" maxMaxMatch} \
      ~{if defined(nucNucMerExe) then ("--nucmer_exe " +  '"' + nucNucMerExe + '"') else ""} \
      ~{if defined(filterFilterExe) then ("--filter_exe " +  '"' + filterFilterExe + '"') else ""} \
      ~{if defined(blastnBlastnExe) then ("--blastn_exe " +  '"' + blastnBlastnExe + '"') else ""} \
      ~{if defined(makeMakeBlastDbExe) then ("--makeblastdb_exe " +  '"' + makeMakeBlastDbExe + '"') else ""} \
      ~{if defined(blastBlastAllExe) then ("--blastall_exe " +  '"' + blastBlastAllExe + '"') else ""} \
      ~{if defined(formatFormatDbExe) then ("--formatdb_exe " +  '"' + formatFormatDbExe + '"') else ""} \
      ~{true="--write_excel" false="" writeWriteExcel} \
      ~{true="--rerender" false="" reReRender} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(jobJobPrefix) then ("--jobprefix " +  '"' + jobJobPrefix + '"') else ""}
  >>>
}