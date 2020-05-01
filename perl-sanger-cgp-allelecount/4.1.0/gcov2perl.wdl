version 1.0

task Gcov2perl {
  input {
    Boolean iI
    Boolean vV
    String dbDb
    String? gcovGcovFiles
  }
  command <<<
    gcov2perl \
      ~{gcovGcovFiles} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""}
  >>>
}