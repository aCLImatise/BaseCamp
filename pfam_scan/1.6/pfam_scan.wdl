version 1.0

task PfamScan.pl {
  input {
    String fastFastA
    Directory dirDir
  }
  command <<<
    pfam_scan.pl \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(dirDir) then ("-dir " +  '"' + dirDir + '"') else ""}
  >>>
}