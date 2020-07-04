version 1.0

task GffGetmRNA.pl {
  input {
    String? genome
    String? mrna
  }
  command <<<
    gffGetmRNA.pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(mrna) then ("--mrna " +  '"' + mrna + '"') else ""}
  >>>
  parameter_meta {
    genome: "Input a fasta file with the genomic sequences."
    mrna: "Output fasta file with mRNA sequences."
  }
}