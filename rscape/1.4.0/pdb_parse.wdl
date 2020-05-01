version 1.0

task PdbParse.pl {
  input {
    String? pdbPdbFile
    String? stoStoFile
    String? rsRsCapeBin
    String? gnuplotGnuplotDir
  }
  command <<<
    pdb_parse.pl \
      ~{pdbPdbFile} \
      ~{stoStoFile} \
      ~{rsRsCapeBin} \
      ~{gnuplotGnuplotDir}
  >>>
}