version 1.0

task RunMeraculous.sh {
  input {
    Boolean labelLabel
    Boolean dirDir
    Boolean restartRestart
    Boolean resumeResume
    Boolean stepStep
    Boolean startStart
    Boolean stopStop
    Boolean archiveArchive
    Boolean cleanupCleanupLevel
    Boolean vV
  }
  command <<<
    run_meraculous.sh \
      ~{true="-label" false="" labelLabel} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-restart" false="" restartRestart} \
      ~{true="-resume" false="" resumeResume} \
      ~{true="-step" false="" stepStep} \
      ~{true="-start" false="" startStart} \
      ~{true="-stop" false="" stopStop} \
      ~{true="-archive" false="" archiveArchive} \
      ~{true="-cleanup_level" false="" cleanupCleanupLevel} \
      ~{true="-v" false="" vV}
  >>>
}