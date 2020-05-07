version 1.0

task GffGetmRNA.pl {
  input {
    String genomeGenome
    String mrnaMrna
  }
  command <<<
    gffGetmRNA.pl \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(mrnaMrna) then ("--mrna " +  '"' + mrnaMrna + '"') else ""}
  >>>
}