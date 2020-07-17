version 1.0

task FilterPolishes {
  input {
    Boolean? verbose
    String? discard_polishes_c
    String? discard_polishes_i
    String? discard_polishes_l
    String? min_exons
    String? max_exons
    String? discard_polishes_cdna
    String? discard_polishes_genomic
    String? write_saved_polishes_file
    Boolean? do_write_saved_polishes
    String? write_discarded_polishes_file
    Boolean? do_write_discarded_polishes
    String? write_intractable_aborted
    Boolean? self_hits
    String? segregate
    Boolean? no_def_lines
    Boolean? no_alignments
    Boolean? gff_three
  }
  command <<<
    filterPolishes \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(discard_polishes_c) then ("-c " +  '"' + discard_polishes_c + '"') else ""} \
      ~{if defined(discard_polishes_i) then ("-i " +  '"' + discard_polishes_i + '"') else ""} \
      ~{if defined(discard_polishes_l) then ("-l " +  '"' + discard_polishes_l + '"') else ""} \
      ~{if defined(min_exons) then ("-minexons " +  '"' + min_exons + '"') else ""} \
      ~{if defined(max_exons) then ("-maxexons " +  '"' + max_exons + '"') else ""} \
      ~{if defined(discard_polishes_cdna) then ("-C " +  '"' + discard_polishes_cdna + '"') else ""} \
      ~{if defined(discard_polishes_genomic) then ("-G " +  '"' + discard_polishes_genomic + '"') else ""} \
      ~{if defined(write_saved_polishes_file) then ("-o " +  '"' + write_saved_polishes_file + '"') else ""} \
      ~{true="-O" false="" do_write_saved_polishes} \
      ~{if defined(write_discarded_polishes_file) then ("-d " +  '"' + write_discarded_polishes_file + '"') else ""} \
      ~{true="-D" false="" do_write_discarded_polishes} \
      ~{if defined(write_intractable_aborted) then ("-j " +  '"' + write_intractable_aborted + '"') else ""} \
      ~{true="-selfhits" false="" self_hits} \
      ~{if defined(segregate) then ("-segregate " +  '"' + segregate + '"') else ""} \
      ~{true="-nodeflines" false="" no_def_lines} \
      ~{true="-noalignments" false="" no_alignments} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    verbose: "Report progress"
    discard_polishes_c: "Discard polishes below c% composite (default: 0)."
    discard_polishes_i: "Discard polishes below i% identity (default: 0)."
    discard_polishes_l: "Discard polishes below l identities (default: 0)."
    min_exons: "Discard polishes below e exons (default: 0)."
    max_exons: "Discard polishes above e exons (default: infinity)."
    discard_polishes_cdna: "Discard polishes that are not from cDNA idx 'c'"
    discard_polishes_genomic: "Discard polishes that are not from genomic idx 'g'"
    write_saved_polishes_file: "Write saved polishes to the 'o' file (default == stdout)."
    do_write_saved_polishes: "Don't write saved polishes."
    write_discarded_polishes_file: "Write discarded polishes to the 'o' file (default == stdout)."
    do_write_discarded_polishes: "Don't write discarded polishes."
    write_intractable_aborted: "Write intractable and aborted polishes to the 'o' file.  By default these are silently discarded."
    self_hits: "Filter out alignments to ourself -- if you did an all-to-all mapping of a set onto itself.  Deflines needed!"
    segregate: "b Segregate polishes by genomic idx, for idx's between a and b inclusive. b-a must be less than 1024. Must be used with -o. Will create numerous files 'o.%05d'."
    no_def_lines: "Strip out deflines."
    no_alignments: "Strip out alignments."
    gff_three: "Write output in GFF3 format. All conditions must be met."
  }
}