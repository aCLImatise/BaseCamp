version 1.0

task Einfo {
  input {
    Boolean dbDb
    Boolean dbsDbs
    Boolean fieldsFields
    Boolean linksLinks
  }
  command <<<
    einfo \
      ~{true="-db" false="" dbDb} \
      ~{true="-dbs" false="" dbsDbs} \
      ~{true="-fields" false="" fieldsFields} \
      ~{true="-links" false="" linksLinks}
  >>>
}