version 1.0

task VtoolsPhenotype {
  input {
    Boolean fF
    Boolean setSet
    Boolean fromFromStat
    Boolean outputOutput
    String jobsJobs
    Boolean gG
    Boolean sS
    Boolean vV
    Boolean headerHeader
    String delimiterDelimiter
    String naNa
    String limitLimit
  }
  command <<<
    vtools phenotype \
      ~{true="-f" false="" fF} \
      ~{true="--set" false="" setSet} \
      ~{true="--from_stat" false="" fromFromStat} \
      ~{true="--output" false="" outputOutput} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(naNa) then ("--na " +  '"' + naNa + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""}
  >>>
}