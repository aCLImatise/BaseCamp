version 1.0

task Mcast {
  input {
    Float? alpha
    File? b_file
    Boolean? hard_mask
    Int? max_gap
    Int? max_stored_scores
    Int? max_total_width
    Float? motif_p_thresh
    Directory? name_output_not
    Directory? oc
    String? output_p_thresh
    String? output_q_thresh
    Boolean? parse_genomic_coord
    File? psp
    File? prior_dist
    Boolean? synth
    Int? seed
    Boolean? text
    Boolean? transfac
    Int? verbosity
    String overwritten_dot
  }
  command <<<
    mcast \
      ~{overwritten_dot} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if (hard_mask) then "--hardmask" else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_stored_scores) then ("--max-stored-scores " +  '"' + max_stored_scores + '"') else ""} \
      ~{if defined(max_total_width) then ("--max-total-width " +  '"' + max_total_width + '"') else ""} \
      ~{if defined(motif_p_thresh) then ("--motif-pthresh " +  '"' + motif_p_thresh + '"') else ""} \
      ~{if defined(name_output_not) then ("--o " +  '"' + name_output_not + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(output_p_thresh) then ("--output-pthresh " +  '"' + output_p_thresh + '"') else ""} \
      ~{if defined(output_q_thresh) then ("--output-qthresh " +  '"' + output_q_thresh + '"') else ""} \
      ~{if (parse_genomic_coord) then "--parse-genomic-coord" else ""} \
      ~{if defined(psp) then ("--psp " +  '"' + psp + '"') else ""} \
      ~{if defined(prior_dist) then ("--prior-dist " +  '"' + prior_dist + '"') else ""} \
      ~{if (synth) then "--synth" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (transfac) then "--transfac" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    alpha: "The fraction of all TF binding sites that are binding sites\\nfor the TF of interest. Used in the calculation of PSP.\\n(default 1.0)"
    b_file: "File containing n-order Markov background model"
    hard_mask: "Nucleotides in lower case will be converted to 'N'\\npreventing them from being considred in motif matches"
    max_gap: "Maximum allowed distance between adjacent hits;\\n(default = 50)"
    max_stored_scores: "Maximum number of matches that will be stored in memory;\\n(default=100000)"
    max_total_width: "Maximum combined width of all motifs; (default= no limit)"
    motif_p_thresh: "p-value threshold for motif hits; (default = 0.0005)."
    name_output_not: "Name of output directory. Existing files will not be\\noverwritten. (default=mcast_out)"
    oc: "Name of output directory. Existing files will be"
    output_p_thresh: "Print only results with p-values less than <value>.\\n(default: not used)."
    output_q_thresh: "Print only results with q-values less than <value>./\\n(default: not used)."
    parse_genomic_coord: "Parse genomic coord. found in sequence headers"
    psp: "File containing position specific priors; (default none)"
    prior_dist: "File containing distribution of position specific priors;\\n(default none)"
    synth: "Use synthetic scores for distribution"
    seed: "Use this seed for the generation of synthetic sequences\\nwhich are in turn used to create synthetic scores.\\n(default: 42)"
    text: "Plain text output only"
    transfac: "Motif file is in TRANSFAC format. (default: MEME format)"
    verbosity: "Verbosity of error messagess, with <value> in the range 0-5;\\n(default = 3)."
    overwritten_dot: "--output-ethresh <value>      Print only results with E-values less than <value>."
  }
  output {
    File out_stdout = stdout()
    Directory out_name_output_not = "${in_name_output_not}"
    Directory out_oc = "${in_oc}"
  }
}