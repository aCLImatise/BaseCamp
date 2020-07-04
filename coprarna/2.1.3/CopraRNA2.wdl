version 1.0

task CopraRNA2.pl {
  input {
    Boolean? srna_seq
    Boolean? region
    Boolean? nt_up
    Boolean? nt_down
    Boolean? cores
    Boolean? rc_size
    Boolean? winsize
    Boolean? max_bp_dist
    Boolean? cop_one
    Boolean? cons
    Boolean? verbose
    Boolean? web_srv
    Boolean? no_clean
    Boolean? enrich
    Boolean? no_oi
    Boolean? ooi_filt
    Boolean? root
    Boolean? top_count
  }
  command <<<
    CopraRNA2.pl \
      ~{true="--srnaseq" false="" srna_seq} \
      ~{true="--region" false="" region} \
      ~{true="--ntup" false="" nt_up} \
      ~{true="--ntdown" false="" nt_down} \
      ~{true="--cores" false="" cores} \
      ~{true="--rcsize" false="" rc_size} \
      ~{true="--winsize" false="" winsize} \
      ~{true="--maxbpdist" false="" max_bp_dist} \
      ~{true="--cop1" false="" cop_one} \
      ~{true="--cons" false="" cons} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--websrv" false="" web_srv} \
      ~{true="--noclean" false="" no_clean} \
      ~{true="--enrich" false="" enrich} \
      ~{true="--nooi" false="" no_oi} \
      ~{true="--ooifilt" false="" ooi_filt} \
      ~{true="--root" false="" root} \
      ~{true="--topcount" false="" top_count}
  >>>
  parameter_meta {
    srna_seq: "FASTA file with small RNA sequences (def:input_sRNA.fa)"
    region: "region to scan in whole genome target prediction (def:5utr) '5utr' for start codon '3utr' for stop codon 'cds' for entire transcript"
    nt_up: "amount of nucleotides upstream of '--region' to parse for targeting (def:200)"
    nt_down: "amount of nucleotides downstream of '--region' to parse for targeting (def:100)"
    cores: "amount of cores to use for parallel computation (def:1)"
    rc_size: "minimum amount (%) of putative target homologs that need to be available  for a target cluster to be considered in the CopraRNA1 part (see --cop1) of the prediction (def:0.5)"
    winsize: "IntaRNA target (--tAccW) window size parameter (def:150)"
    max_bp_dist: "IntaRNA target (--tAccL) maximum base pair distance parameter (def:100)"
    cop_one: "switch for CopraRNA1 prediction (def:off)"
    cons: "controls consensus prediction (def:0) '0' for off '1' for organism of interest based consensus '2' for overall consensus based prediction"
    verbose: "switch to print verbose output to terminal during computation (def:off)"
    web_srv: "switch to provide webserver output files (def:off)"
    no_clean: "switch to prevent removal of temporary files (def:off)"
    enrich: "if entered then DAVID-WS functional enrichment is calculated with given amount of top predictions (def:off)"
    no_oi: "if set then the CopraRNA2 prediction mode is set not to focus on the organism of interest (def:off)"
    ooi_filt: "post processing filter for organism of interest p-value 0=off (def:0)"
    root: "specifies root function to apply to the weights (def:1)"
    top_count: "specifies the amount of top predictions to return and use for the extended regions plots (def:200)"
  }
}