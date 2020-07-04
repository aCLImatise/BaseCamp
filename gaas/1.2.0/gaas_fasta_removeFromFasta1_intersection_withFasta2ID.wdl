version 1.0

task GaasFastaRemoveFromFasta1IntersectionWithFasta2ID.pl {
  input {
    String? fast_a_one
    String? fast_a_two
    Boolean? _output_
    String? out
    String perl
    String my_script_do_tpl
  }
  command <<<
    gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl \
      ~{perl} \
      ~{my_script_do_tpl} \
      ~{if defined(fast_a_one) then ("--fasta1 " +  '"' + fast_a_one + '"') else ""} \
      ~{if defined(fast_a_two) then ("--fasta2 " +  '"' + fast_a_two + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fast_a_one: "Fasta file 1. The headers of sequences of this file will be used to compare against those to file 2."
    fast_a_two: "Fasta file 2. This is the \"reference file\" in which we will remove sequences already existing in file 1."
    _output_: ", --output , --out or --outfile Output fasta file. If no output file is specified, the output will be written to STDOUT."
    out: ""
    perl: ""
    my_script_do_tpl: ""
  }
}