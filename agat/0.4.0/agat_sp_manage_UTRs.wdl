version 1.0

task AgatSpManageUTRs.pl {
  input {
    String? ref_file
    String? number
    String? tree_prime_utr
    String? five_prime_utr
    String? both
    String? plot
    String? output_gff_file
  }
  command <<<
    agat_sp_manage_UTRs.pl \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(tree_prime_utr) then ("--tree_prime_utr " +  '"' + tree_prime_utr + '"') else ""} \
      ~{if defined(five_prime_utr) then ("--five_prime_utr " +  '"' + five_prime_utr + '"') else ""} \
      ~{if defined(both) then ("--both " +  '"' + both + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    number: "Threshold of exon's number of the UTR. Over or equal to this threshold, the UTR will be discarded. Default value is 5."
    tree_prime_utr: "The threshold of the option <n> will be applied on the 3'UTR."
    five_prime_utr: "The threshold of the option <n> will be applied on the 5'UTR."
    both: "The threshold of the option <n> will be applied on genes where the number of UTR exon (3' and 5' additioned) is over it."
    plot: "Allows to create an histogram in pdf of UTR sizes distribution."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
  }
}