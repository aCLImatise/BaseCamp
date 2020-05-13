version 1.0

task Proteinortho6.pl {
  input {
    Boolean stepStep
    Boolean jobsJobs
    Boolean jobsJobs
    Boolean stepStep
  }
  command <<<
    proteinortho6.pl \
      ~{true="-step" false="" stepStep} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-step" false="" stepStep}
  >>>
}