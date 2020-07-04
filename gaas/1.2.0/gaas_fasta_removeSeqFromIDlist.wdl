version 1.0

task GaasFastaRemoveSeqFromIDlist.pl {
  input {
    String? fast_a_one
    String? fast_a_two
    Boolean? _output_
    File? list
    String? out
  }
  command <<<
    gaas_fasta_removeSeqFromIDlist.pl \
      ~{if defined(fast_a_one) then ("--fasta1 " +  '"' + fast_a_one + '"') else ""} \
      ~{if defined(fast_a_two) then ("--fasta2 " +  '"' + fast_a_two + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fast_a_one: "Fasta file 1. The headers of sequences of this file will be used to compare against those to file 2."
    fast_a_two: "This is a file containing the headers of sequence to be removed. Only one ID per line. Header should be identical at 100% to be removed."
    _output_: ", --output , --out or --outfile Output fasta file. If no output file is specified, the output will be written to STDOUT."
    list: ""
    out: ""
  }
}