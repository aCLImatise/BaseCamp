version 1.0

task VtoolsOutput {
  input {
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
    String? tableTable
    String? fieldsFields
  }
  command <<<
    vtools output \
      ~{tableTable} \
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
      ~{fieldsFields}
  >>>
}