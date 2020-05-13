version 1.0

task XsvSplit {
  input {
    String sizeSize
    String jobsJobs
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? outdirOutdir
    String? inputInput
  }
  command <<<
    xsv split \
      ~{outdirOutdir} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{inputInput}
  >>>
}