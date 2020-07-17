version 1.0

task AgatSpAddStartAndStop.pl {
  input {
    String? gff
    String? fast_a
    String? codon
    String? output_gff_file
    Boolean? verbose_debugging_purpose
    String agat_sp_add_start_and_stop_do_tpl_do_tpl
  }
  command <<<
    agat_sp_add_start_and_stop.pl \
      ~{agat_sp_add_start_and_stop_do_tpl_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{true="-v" false="" verbose_debugging_purpose}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file. Needed to check that CDS sequences start by start codon and stop by stop codon."
    codon: "Codon table to use. [default 1]"
    output_gff_file: "Output gff file updated"
    verbose_debugging_purpose: "Verbose for debugging purpose."
    agat_sp_add_start_and_stop_do_tpl_do_tpl: ""
  }
}