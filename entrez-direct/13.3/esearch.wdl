version 1.0

task Esearch {
  input {
    Boolean dbDb
    Boolean queryQuery
    Boolean sortSort
    Boolean daysDays
    Boolean dateDateType
    Boolean minMinDate
    Boolean maxdateMaxdate
    Boolean fieldField
    Boolean pairsPairs
    Boolean spellSpell
    Boolean labelLabel
    String? snpSnp
  }
  command <<<
    esearch \
      ~{snpSnp} \
      ~{true="-db" false="" dbDb} \
      ~{true="-query" false="" queryQuery} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-days" false="" daysDays} \
      ~{true="-datetype" false="" dateDateType} \
      ~{true="-mindate" false="" minMinDate} \
      ~{true="-maxdate" false="" maxdateMaxdate} \
      ~{true="-field" false="" fieldField} \
      ~{true="-pairs" false="" pairsPairs} \
      ~{true="-spell" false="" spellSpell} \
      ~{true="-label" false="" labelLabel}
  >>>
}