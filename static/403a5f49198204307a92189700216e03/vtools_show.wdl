version 1.0

task VtoolsShow {
  input {
    String limitLimit
    Boolean vV
    String? itemsItems
  }
  command <<<
    vtools show \
      ~{itemsItems} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}