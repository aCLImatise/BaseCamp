version 1.0

task Mcast {
  input {
    String? alpha
    File? b_file
    Boolean? hard_mask
    String? max_gap
    String? max_stored_scores
    String? max_total_width
    String? motif_p_thresh
    String? name_output_not
    String? oc
    String? output_e_thresh
    String? output_p_thresh
    String? output_q_thresh
    Boolean? parse_genomic_coord
    String? psp
    String? prior_dist
    Boolean? synth
    String? seed
    Boolean? text
    Boolean? transfac
    String? verbosity
    String motifs
    String sequence_database
  }
  command <<<
    mcast \
      ~{motifs} \
      ~{sequence_database} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{true="--hardmask" false="" hard_mask} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_stored_scores) then ("--max-stored-scores " +  '"' + max_stored_scores + '"') else ""} \
      ~{if defined(max_total_width) then ("--max-total-width " +  '"' + max_total_width + '"') else ""} \
      ~{if defined(motif_p_thresh) then ("--motif-pthresh " +  '"' + motif_p_thresh + '"') else ""} \
      ~{if defined(name_output_not) then ("--o " +  '"' + name_output_not + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(output_e_thresh) then ("--output-ethresh " +  '"' + output_e_thresh + '"') else ""} \
      ~{if defined(output_p_thresh) then ("--output-pthresh " +  '"' + output_p_thresh + '"') else ""} \
      ~{if defined(output_q_thresh) then ("--output-qthresh " +  '"' + output_q_thresh + '"') else ""} \
      ~{true="--parse-genomic-coord" false="" parse_genomic_coord} \
      ~{if defined(psp) then ("--psp " +  '"' + psp + '"') else ""} \
      ~{if defined(prior_dist) then ("--prior-dist " +  '"' + prior_dist + '"') else ""} \
      ~{true="--synth" false="" synth} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{true="--transfac" false="" transfac} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    alpha: "The fraction of all TF binding sites that are binding sites for the TF of interest. Used in the calculation of PSP. (default 1.0)"
    b_file: "File containing n-order Markov background model"
    hard_mask: "Nucleotides in lower case will be converted to 'N'  preventing them from being considred in motif matches"
    max_gap: "Maximum allowed distance between adjacent hits; (default = 50)"
    max_stored_scores: "Maximum number of matches that will be stored in memory; (default=100000)"
    max_total_width: "Maximum combined width of all motifs; (default= no limit)"
    motif_p_thresh: "p-value threshold for motif hits; (default = 0.0005)."
    name_output_not: "Name of output directory. Existing files will not be overwritten. (default=mcast_out)"
    oc: "Name of output directory. Existing files will be overwritten."
    output_e_thresh: "Print only results with E-values less than <value>. (default = 10.0)."
    output_p_thresh: "Print only results with p-values less than <value>. (default: not used)."
    output_q_thresh: "Print only results with q-values less than <value>./ (default: not used)."
    parse_genomic_coord: "Parse genomic coord. found in sequence headers"
    psp: "File containing position specific priors; (default none)"
    prior_dist: "File containing distribution of position specific priors; (default none)"
    synth: "Use synthetic scores for distribution"
    seed: "Use this seed for the generation of synthetic sequences which are in turn used to create synthetic scores. (default: 42)"
    text: "Plain text output only"
    transfac: "Motif file is in TRANSFAC format. (default: MEME format)"
    verbosity: "Verbosity of error messagess, with <value> in the range 0-5; (default = 3)."
    motifs: ""
    sequence_database: ""
  }
}