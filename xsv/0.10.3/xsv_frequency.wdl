version 1.0

task XsvFrequency {
  input {
    String selectSelect
    String limitLimit
    Boolean ascAsc
    Boolean noNoNulls
    String jobsJobs
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv frequency \
      ~{inputInput} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--asc" false="" ascAsc} \
      ~{true="--no-nulls" false="" noNoNulls} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}