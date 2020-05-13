version 1.0

task MedakaStitch {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Array[String]+ regionsRegions
    String jobsJobs
    String? inputsInputs
    String? outputOutput
  }
  command <<<
    medaka stitch \
      ~{inputsInputs} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{outputOutput}
  >>>
}