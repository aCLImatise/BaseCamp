version 1.0

task Centrimo {
  input {
    Directory? output_directory_default
    String? oc
    File? neg
    File? x_alph
    Int? b_file
    Int? motif_pseudo
    String? inc
    String? exc
    Int? seq_len
    Float? score
    Boolean? use_lo_fraction
    Boolean? use_p_values
    Boolean? norc
    Boolean? sep
    Boolean? flip
    Boolean? optimize_score
    Int? max_reg
    Int? min_reg
    Boolean? local
    Boolean? cd
    Int? e_thresh
    String? desc
    File? d_file
    Boolean? no_seq
    Boolean? verbosity
    File sequence_file
    File motif_file
  }
  command <<<
    centrimo \
      ~{sequence_file} \
      ~{motif_file} \
      ~{if defined(output_directory_default) then ("--o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(neg) then ("--neg " +  '"' + neg + '"') else ""} \
      ~{if defined(x_alph) then ("--xalph " +  '"' + x_alph + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("--exc " +  '"' + exc + '"') else ""} \
      ~{if defined(seq_len) then ("--seqlen " +  '"' + seq_len + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if (use_lo_fraction) then "--use-lo-fraction" else ""} \
      ~{if (use_p_values) then "--use-pvalues" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if (sep) then "--sep" else ""} \
      ~{if (flip) then "--flip" else ""} \
      ~{if (optimize_score) then "--optimize-score" else ""} \
      ~{if defined(max_reg) then ("--maxreg " +  '"' + max_reg + '"') else ""} \
      ~{if defined(min_reg) then ("--minreg " +  '"' + min_reg + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (cd) then "--cd" else ""} \
      ~{if defined(e_thresh) then ("--ethresh " +  '"' + e_thresh + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(d_file) then ("--dfile " +  '"' + d_file + '"') else ""} \
      ~{if (no_seq) then "--noseq" else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_default: "output directory; default: 'centrimo_out'"
    oc: "allow overwriting; default: 'centrimo_out'"
    neg: "plot motif distributions in this set as well\\nin the <sequence file> (positive sequences)\\nand compute the relative enrichment"
    x_alph: "name of the file containing a custom alphabet,\\nwhich specifies that motifs should be converted;"
    b_file: "0-order background frequency model for PWMs;\\ndefault: base frequencies in input sequences"
    motif_pseudo: "pseudo-count to use creating PWMs;\\ndefault: 5"
    inc: "name pattern to select as motif; may be\\nrepeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be\\nrepeated; default: all motifs are used"
    seq_len: "use sequences with this length; default: use\\nsequences with the same length as the first"
    score: "score threshold for PWMs, in bits;\\nsequences without a site with score >= <S>\\nare ignored;\\ndefault: 0.1"
    use_lo_fraction: "score threshold <S> is fraction of maximum log-odds"
    use_p_values: "use p-values instead of PWM scores"
    norc: "do not scan with the reverse complement motif"
    sep: "scan separately with reverse complement motif;\\n(implies --norc)"
    flip: "'flip' sequences so that matches on the\\nreverse strand are 'reflected' around center;\\ndefault: do not flip sequences"
    optimize_score: "search for optimized score above the threshold\\ngiven by '--score' argument. Slow computation\\ndue to multiple tests.\\ndefault: use fixed score threshold"
    max_reg: "maximum width of any region to consider;\\ndefault: use the sequence length"
    min_reg: "minimum width of any region to consider;\\nmust be less than <maxreg>;\\ndefault: 1 bp"
    local: "compute the enrichment of all regions;\\ndefault: enrichment of central regions only"
    cd: "distance to sequence center enrichment;\\ndefault: region enrichment"
    e_thresh: "evalue threshold for including in results;\\ndefault: 10"
    desc: "include the description in the output;\\ndefault: no description"
    d_file: "use the file content as the description;\\ndefault: no descriptionn"
    no_seq: "do not store sequence IDs in HTML output;\\ndefault: IDs are stored in the HTML output"
    verbosity: "[1|2|3|4]    verbosity of output: 1 (quiet) - 4 (dump);\\ndefault: 2"
    sequence_file: ""
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}