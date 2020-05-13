version 1.0

task BpIndex.pl {
  input {
    Boolean fmtFmt
    Boolean dirDir
    String dbmDbmFile
    Boolean vV
  }
  command <<<
    bp_index.pl \
      ~{true="-fmt" false="" fmtFmt} \
      ~{true="-dir" false="" dirDir} \
      ~{if defined(dbmDbmFile) then ("- DBM_file " +  '"' + dbmDbmFile + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}