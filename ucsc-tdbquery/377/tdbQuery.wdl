version 1.0

task TdbQuery {
  input {
    Boolean rootRoot
    String releaseRelease
    String? sqlSqlStatement
  }
  command <<<
    tdbQuery \
      ~{sqlSqlStatement} \
      ~{true="-root" false="" rootRoot} \
      ~{if defined(releaseRelease) then ("-release " +  '"' + releaseRelease + '"') else ""}
  >>>
}