version 1.0

task Proteinortho {
  input {
    Boolean stepStep
    Boolean jobsJobs
    Boolean jobsJobs
    Boolean stepStep
  }
  command <<<
    proteinortho \
      ~{true="-step" false="" stepStep} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-step" false="" stepStep}
  >>>
}