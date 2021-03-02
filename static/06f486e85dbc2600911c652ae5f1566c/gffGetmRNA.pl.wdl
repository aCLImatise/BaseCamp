version 1.0

task GffGetmRNApl {
  input {
    File? genome
    File? mrna
  }
  command <<<
    gffGetmRNA_pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(mrna) then ("--mrna " +  '"' + mrna + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "Input a fasta file with the genomic sequences."
    mrna: "Output fasta file with mRNA sequences."
  }
  output {
    File out_stdout = stdout()
    File out_mrna = "${in_mrna}"
  }
}