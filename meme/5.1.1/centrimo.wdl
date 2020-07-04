version 1.0

task Centrimo {
  input {
    String? output_directory_default
    String? oc
    String? neg
    String? x_alph
    String? b_file
    String? motif_pseudo
    String? inc
    String? exc
    Int? seq_len
    String? score
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
    String? e_thresh
    String? desc
    String? d_file
    Boolean? no_seq
    Boolean? verbosity
    String sequence_file
    String motif_file
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
      ~{true="--use-lo-fraction" false="" use_lo_fraction} \
      ~{true="--use-pvalues" false="" use_p_values} \
      ~{true="--norc" false="" norc} \
      ~{true="--sep" false="" sep} \
      ~{true="--flip" false="" flip} \
      ~{true="--optimize-score" false="" optimize_score} \
      ~{if defined(max_reg) then ("--maxreg " +  '"' + max_reg + '"') else ""} \
      ~{if defined(min_reg) then ("--minreg " +  '"' + min_reg + '"') else ""} \
      ~{true="--local" false="" local} \
      ~{true="--cd" false="" cd} \
      ~{if defined(e_thresh) then ("--ethresh " +  '"' + e_thresh + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(d_file) then ("--dfile " +  '"' + d_file + '"') else ""} \
      ~{true="--noseq" false="" no_seq} \
      ~{true="--verbosity" false="" verbosity}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: 'centrimo_out'"
    oc: "allow overwriting; default: 'centrimo_out'"
    neg: "plot motif distributions in this set as well in the <sequence file> (positive sequences) and compute the relative enrichment"
    x_alph: "name of the file containing a custom alphabet, which specifies that motifs should be converted;"
    b_file: "0-order background frequency model for PWMs; default: base frequencies in input sequences"
    motif_pseudo: "pseudo-count to use creating PWMs; default: 5"
    inc: "name pattern to select as motif; may be repeated; default: all motifs are used"
    exc: "name pattern to exclude as motif; may be repeated; default: all motifs are used"
    seq_len: "use sequences with this length; default: use sequences with the same length as the first"
    score: "score threshold for PWMs, in bits; sequences without a site with score >= <S> are ignored; default: 0.1"
    use_lo_fraction: "score threshold <S> is fraction of maximum log-odds"
    use_p_values: "use p-values instead of PWM scores"
    norc: "do not scan with the reverse complement motif"
    sep: "scan separately with reverse complement motif; (implies --norc)"
    flip: "'flip' sequences so that matches on the  reverse strand are 'reflected' around center; default: do not flip sequences"
    optimize_score: "search for optimized score above the threshold given by '--score' argument. Slow computation due to multiple tests. default: use fixed score threshold"
    max_reg: "maximum width of any region to consider; default: use the sequence length"
    min_reg: "minimum width of any region to consider; must be less than <maxreg>; default: 1 bp"
    local: "compute the enrichment of all regions; default: enrichment of central regions only"
    cd: "distance to sequence center enrichment; default: region enrichment"
    e_thresh: "evalue threshold for including in results; default: 10"
    desc: "include the description in the output; default: no description"
    d_file: "use the file content as the description; default: no descriptionn"
    no_seq: "do not store sequence IDs in HTML output; default: IDs are stored in the HTML output"
    verbosity: "[1|2|3|4]    verbosity of output: 1 (quiet) - 4 (dump); default: 2"
    sequence_file: ""
    motif_file: ""
  }
}