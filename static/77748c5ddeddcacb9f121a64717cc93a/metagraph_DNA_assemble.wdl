version 1.0

task MetagraphDNAAssemble {
  input {
    Boolean? prune_tips
    Boolean? unit_igs
    Boolean? enumerate
    Boolean? primary_km_ers
    Boolean? to_gfa
    Boolean? compacted
    Boolean? header
    Boolean? parallel
    Boolean? annotator
    Boolean? label_mask_in
    Boolean? label_mask_out
    Boolean? label_mask_in_fraction
    Boolean? label_mask_out_fraction
    Boolean? label_other_fraction
    Boolean? filter_by_km_er
    Boolean? verbose
    String? o
    String graph
  }
  command <<<
    metagraph_DNA assemble \
      ~{graph} \
      ~{if (prune_tips) then "--prune-tips" else ""} \
      ~{if (unit_igs) then "--unitigs" else ""} \
      ~{if (enumerate) then "--enumerate" else ""} \
      ~{if (primary_km_ers) then "--primary-kmers" else ""} \
      ~{if (to_gfa) then "--to-gfa" else ""} \
      ~{if (compacted) then "--compacted" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (annotator) then "--annotator" else ""} \
      ~{if (label_mask_in) then "--label-mask-in" else ""} \
      ~{if (label_mask_out) then "--label-mask-out" else ""} \
      ~{if (label_mask_in_fraction) then "--label-mask-in-fraction" else ""} \
      ~{if (label_mask_out_fraction) then "--label-mask-out-fraction" else ""} \
      ~{if (label_other_fraction) then "--label-other-fraction" else ""} \
      ~{if (filter_by_km_er) then "--filter-by-kmer" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    prune_tips: "[INT]   prune all dead ends of this length and shorter [0]"
    unit_igs: "extract unitigs [off]"
    enumerate: "enumerate sequences assembled and dumped to FASTA [off]"
    primary_km_ers: "output each k-mer only in one if its forms (canonical/non-canonical) [off]"
    to_gfa: "dump graph layout to GFA [off]"
    compacted: "dump compacted de Bruijn graph to GFA [off]"
    header: "[STR]       header for sequences in FASTA output []"
    parallel: "[INT]     use multiple threads for computation [1]"
    annotator: "[STR]                    annotator to load []"
    label_mask_in: "[STR]                label to include in masked graph"
    label_mask_out: "[STR]               label to exclude from masked graph"
    label_mask_in_fraction: "[FLOAT]     minimum fraction of mask-in labels among the set of masked labels [1.0]"
    label_mask_out_fraction: "[FLOAT]    maximum fraction of mask-out labels among the set of masked labels [0.0]"
    label_other_fraction: "[FLOAT]       maximum fraction of other labels allowed [1.0]"
    filter_by_km_er: "mask out graph k-mers individually [off]"
    verbose: "switch on verbose output [off]"
    o: ""
    graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}