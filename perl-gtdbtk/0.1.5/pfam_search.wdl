version 1.0

task PfamSearch.pl {
  input {
    String fastFastA
    Directory dirDir
    String? pfamPfamScanPl
  }
  command <<<
    pfam_search.pl \
      ~{pfamPfamScanPl} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(dirDir) then ("-dir " +  '"' + dirDir + '"') else ""}
  >>>
}