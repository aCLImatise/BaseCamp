version 1.0

task VtoolsSelect {
  input {
    Boolean sS
    Boolean tT
    Boolean countCount
    Boolean oO
    Boolean vV
    Boolean headerHeader
    String delimiterDelimiter
    String precisionPrecision
    String naNa
    String limitLimit
    String buildBuild
    Boolean gG
    Boolean allAll
    Array[String]+ orderOrderBy
    String? fromFromTable
    String? conditionCondition
  }
  command <<<
    vtools select \
      ~{fromFromTable} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="--count" false="" countCount} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(naNa) then ("--na " +  '"' + naNa + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="--all" false="" allAll} \
      ~{if defined(orderOrderBy) then ("--order_by " +  '"' + orderOrderBy + '"') else ""} \
      ~{conditionCondition}
  >>>
}