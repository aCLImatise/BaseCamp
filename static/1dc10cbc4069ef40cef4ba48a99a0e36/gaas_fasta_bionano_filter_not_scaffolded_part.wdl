version 1.0

task GaasFastaBionanoFilterNotScaffoldedPart.pl {
  input {
    String? fast_a_one
    String? agp
    Boolean? _output_
    String? out
    String my_script_do_tpl
  }
  command <<<
    gaas_fasta_bionano_filter_not_scaffolded_part.pl \
      ~{my_script_do_tpl} \
      ~{if defined(fast_a_one) then ("--fasta1 " +  '"' + fast_a_one + '"') else ""} \
      ~{if defined(agp) then ("--agp " +  '"' + agp + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fast_a_one: "Fasta file 1. The headers of sequences of this file will be used to compare against those to file 2."
    agp: "This is a file containing the headers of sequence to be removed. Only one ID per line. Header should be identical at 100% to be removed."
    _output_: ", --output , --out or --outfile Output fasta file. If no output file is specified, the output will be written to STDOUT."
    out: ""
    my_script_do_tpl: ""
  }
}