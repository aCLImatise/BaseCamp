version 1.0

task FastaRegex.pl {
  input {
    String motifMotif
    File faFa
    String nameName
    Boolean bedBed
  }
  command <<<
    fasta_regex.pl \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(faFa) then ("--fa " +  '"' + faFa + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--bed" false="" bedBed}
  >>>
}