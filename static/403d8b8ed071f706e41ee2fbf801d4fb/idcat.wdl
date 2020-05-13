version 1.0

task Idcat {
  input {
    String fieldsFields
    Boolean fF
    Boolean sS
    Boolean oO
    Boolean vV
    File? fileFileMasks
  }
  command <<<
    idcat \
      ~{fileFileMasks} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV}
  >>>
}