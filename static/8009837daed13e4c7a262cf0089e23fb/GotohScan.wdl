version 1.0

task GotohScan {
  input {
    File? dbase
    File? query
    File? config
    Int? split
    Int? set_evalue_double
    Int? set_percent_identity
    Boolean? print_score_distribution
    Int? give_output_format
    Int? verbose
    String jana_at_bio_in_fdot_uni_leipzig_dot_de
  }
  command <<<
    GotohScan \
      ~{jana_at_bio_in_fdot_uni_leipzig_dot_de} \
      ~{if defined(dbase) then ("--dbase " +  '"' + dbase + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(set_evalue_double) then ("-e " +  '"' + set_evalue_double + '"') else ""} \
      ~{if defined(set_percent_identity) then ("-p " +  '"' + set_percent_identity + '"') else ""} \
      ~{if (print_score_distribution) then "-s" else ""} \
      ~{if defined(give_output_format) then ("-o " +  '"' + give_output_format + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbase: "Input database FILE in FASTA format."
    query: "Input query FILE in FASTA format."
    config: "Input configuration FILE."
    split: "Database is splitted into NUMBER nt large subsequences. Default: 10000"
    set_evalue_double: "Set Evalue (double!). NUMBER should be < 10. Default: 1e-3"
    set_percent_identity: "Set percent identity of aligned sequences. NUMBER should be in [0.0,100.0]"
    print_score_distribution: "Print score distribution data for each query to a file. Default: unset\\nProduces an xmgrace (.agr) file!"
    give_output_format: "Give output format. Default: 0\\n0 - Blast tabular output\\n1 - Blast tabular output + aligned sequences\\n2 - FASTA format. NOTE: Hit sequence only, without gaps !\\n3 - MAF format. NOTE: Header truncated to 30 characters!\\n4 - BED + aligned sequences\\n5 - GFF + aligned sequences"
    verbose: "|1        Print Warnings and Notes. Default: 0"
    jana_at_bio_in_fdot_uni_leipzig_dot_de: "Date:    March 5, 2009"
  }
  output {
    File out_stdout = stdout()
  }
}