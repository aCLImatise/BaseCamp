version 1.0

task Touch {
  input {
    Boolean aA
    Boolean noNoCreate
    String dateDate
    Boolean fF
    Boolean mM
    File referenceReference
    String tT
    String timeTime
  }
  command <<<
    touch \
      ~{true="-a" false="" aA} \
      ~{true="--no-create" false="" noNoCreate} \
      ~{if defined(dateDate) then ("--date " +  '"' + dateDate + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-m" false="" mM} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""}
  >>>
}