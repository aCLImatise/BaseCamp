version 1.0

task AgatSpManageUTRspl {
  input {
    File? ref_file
    Int? number
    Int? tree_prime_utr
    Int? five_prime_utr
    Int? both
    String? plot
    File? output_gff_file
    String agat_sp_manage_utrs_do_tpl
  }
  command <<<
    agat_sp_manage_UTRs_pl \
      ~{agat_sp_manage_utrs_do_tpl} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(tree_prime_utr) then ("--tree_prime_utr " +  '"' + tree_prime_utr + '"') else ""} \
      ~{if defined(five_prime_utr) then ("--five_prime_utr " +  '"' + five_prime_utr + '"') else ""} \
      ~{if defined(both) then ("--both " +  '"' + both + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    number: "Threshold of exon's number of the UTR. Over or equal to this\\nthreshold, the UTR will be discarded. Default value is 5."
    tree_prime_utr: "The threshold of the option <n> will be applied on the 3'UTR."
    five_prime_utr: "The threshold of the option <n> will be applied on the 5'UTR."
    both: "The threshold of the option <n> will be applied on genes where\\nthe number of UTR exon (3' and 5' additioned) is over it."
    plot: "Allows to create an histogram in pdf of UTR sizes distribution."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
    agat_sp_manage_utrs_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}