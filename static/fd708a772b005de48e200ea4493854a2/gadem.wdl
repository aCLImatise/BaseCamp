version 1.0

task Gadem {
  input {
    Boolean? pos_wt
    Boolean? width_wt
    Boolean? ev
    Boolean? pv
    Boolean? minn
    Boolean? f_pwm_zero
    Boolean? b_file
    Boolean? gen
    Boolean? pop
    String? full_scan
    Boolean? mask_r
    Boolean? em
    Boolean? fem
    Boolean? ext_trim
    Boolean? n_motifs
    Boolean? max_w_three
    Boolean? max_w_four
    Boolean? max_w_five
    Boolean? min_gap
    Boolean? max_gap
    String? use_score
    Boolean? f_pwm
    Boolean? f_out
    Boolean? nbs
    Boolean? verbose
    String? f_seq
    String? optional
    String? arguments
  }
  command <<<
    gadem \
      ~{optional} \
      ~{arguments} \
      ~{true="-posWt" false="" pos_wt} \
      ~{true="-widthWt" false="" width_wt} \
      ~{true="-ev" false="" ev} \
      ~{true="-pv" false="" pv} \
      ~{true="-minN" false="" minn} \
      ~{true="-fpwm0" false="" f_pwm_zero} \
      ~{true="-bfile" false="" b_file} \
      ~{true="-gen" false="" gen} \
      ~{true="-pop" false="" pop} \
      ~{if defined(full_scan) then ("-fullScan " +  '"' + full_scan + '"') else ""} \
      ~{true="-maskR" false="" mask_r} \
      ~{true="-em" false="" em} \
      ~{true="-fEM" false="" fem} \
      ~{true="-extTrim" false="" ext_trim} \
      ~{true="-nmotifs" false="" n_motifs} \
      ~{true="-maxw3" false="" max_w_three} \
      ~{true="-maxw4" false="" max_w_four} \
      ~{true="-maxw5" false="" max_w_five} \
      ~{true="-mingap" false="" min_gap} \
      ~{true="-maxgap" false="" max_gap} \
      ~{if defined(use_score) then ("-useScore " +  '"' + use_score + '"') else ""} \
      ~{true="-fpwm" false="" f_pwm} \
      ~{true="-fout" false="" f_out} \
      ~{true="-nbs" false="" nbs} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(f_seq) then ("-fseq " +  '"' + f_seq + '"') else ""}
  >>>
  parameter_meta {
    pos_wt: "0,1, or 2  Weight profile for positions on the sequence (see documentation). 0 - no weight (uniform spatial prior), 1 or 2 - small or zero weights for the ends and large weights for the center (e.g. the center 50 bp) (1 - gaussian prior, 2 - triangular prior). If you expect strong central enrichment for motifs (as in ChIP-seq) and your sequences are long (e.g. >100 bp), choose type 1 (default)."
    width_wt: "integer    For -posWt 1 or 2, width of central sequence region with large EM weights for PWM optimization (default: 50). This argument is ignored when -posWt is 0 (uniform prior)."
    ev: "decimal    ln(E-value) cutoff for selecting MOTIFS (default: 0.0). If a seeded analysis fails to identify the expected motif, run GADEM with -verbose 1 to show motif ln(E-value)s on screen, then re-run with a larger ln(E-value) cutoff. This can help in identifying short and/or low abundance motifs, for which the default log(E-value) threshold may be too low. A larger value (e.g., 10000) can return groups of closely related motifs (possible  variants) whereas a smaller value (<0) returns fewer (but conserved) motifs. To identify potential motif variants, set -ev large, e.g., 10000 and -minN small e.g., numSeq/10. This allows gadem to identify motif variants that are present in at least 10 percent of the sequences. A large log(E-value) cutoff enures such motifs are found. The subroutine for E-value calculation is adapted from the MEME package."
    pv: "decimal    P-value cutoff for declaring BINDING SITES (default: 0.00025). Depending on data size and the motif, you might want to assess more than one value. For ChIP-seq data (e.g., 10 thousand +/-200-bp max-center peak 'cores'), p=0.00025 often seems appropriate.  Given a subsequence s of length w, GADEM computes the log likelihood (llr) score, log{p(s|M)/p(s|B)}, where M is the EM-derived motif model, B is the 0-th order Markov background model and w is the motif length. GADEM uses the [a,c,g,t] frequencies from the foreground data as the parameters for the 0th Makrov background model. The subsequence is declared a binding site if  its llr score is at or above the llr score corresponding to the p-value cutoff. This requires knowing the distribution of the llr score (under the null), and GADEM first integerizes the log(Mij/Bj) llr score matrix, where i=1,...,w and j=1,2,3,4, by multiplying it with a large constant (200) followed by rounding the real numbers to their closest integers. The null distribution of the integerized llr scores is then determined using the Staden probability generating function method (Comput. Appl. Biosci,5,89,1989). See Hertz,GZ & Stormo GD (Bioinformatics 1999, 15:563-577) for a review."
    minn: "integer    Minimal number of sites required for a motif to be reported (default: numSeq/20)."
    f_pwm_zero: "string     File name for the seed PWM, when a 'seeded' approach is used, in which a PWM  (format below) is used as the starting PWM for the EM algorithm. This is an  effective way of testing for an 'expected' motif, because it is focused, robust  to noise, and much faster than 'unseeded' de novo discovery. Also, when a seed  PWM is specified, the run results are deterministic, so only a single run is  needed (repeat runs with the same settings will give identical results). In  contrast, unseeded runs are stochastic, and we recommend comparing results  from several repeat runs. Format: number of rows & columns followed by integer counts OR decimal freq. Example: PWM (CREB, JASPAR MA0018) in two acceptable representations: 4     12 0     3     0     2     5     0     0    16     0     0     1     5 7     5     3     3     1     0     0     0    16     0     5     6 5     4     6    11     7     0    15     0     0    16     0     3 4     4     7     0     3    16     1     0     0     0    10     2 4     12 0.000 0.188 0.000 0.125 0.312 0.000 0.000 1.000 0.000 0.000 0.062 0.312 0.438 0.312 0.188 0.188 0.062 0.000 0.000 0.000 1.000 0.000 0.312 0.375 0.312 0.250 0.375 0.688 0.438 0.000 0.938 0.000 0.000 1.000 0.000 0.188 0.250 0.250 0.438 0.000 0.188 1.000 0.062 0.000 0.000 0.000 0.625 0.125"
    b_file: "string     File name for background model. The current version only supports 0-th Markov background model Format: #monomer frequencies (this line is optional) a        0.2834 c        0.2215 g        0.2333 t        0.2618"
    gen: "integer    Number of genetic algorithm (GA) generations (default: 5)."
    pop: "integer    GA population size (default: 100). Both default settings should work well for most datasets (ChIP-chip and ChIP-seq). The above two arguments are ignored in a seeded analysis, because spaced dyads and GA are no longer needed (-gen is set to 1 and -pop is set to 10 internally, corresponding to the 10 maxp choices)."
    full_scan: "or 1     GADEM keeps two copies of the input sequences internally: one (D) for discovering PWMs and one (S) for scanning for binding sites using the PWMs. Once a motif is identified, its instances in set D are always masked by Ns. However, masking motif instances in set S is optional, and scanning unmasked sequences allows sites of discovered motifs to overlap. 0 (default) - scan masked sequences in S (disallow motif site overlap). 1 - scan unmasked sequences in S (allow motif sites to overlap) (was default in v1.3)."
    mask_r: "0 or 1     Mask repetitive, low-complexity sequences as below(default: 0-no masking,1-masking): a) 'aaaaaaaa', 'tttttttt', 'cacacaca', 'tgtgtgtg', or 'tatatatat', each of which is at least 8 nucleotides long. b) 'ggaggaggagga','gaggaggaggag','agaagaagaaga','ctcctcctcctc','tcctcctcctcc', 'tcttcttcttct','tagtagtagtag','aataataataat','attattattatt','ataataataata' each of which is at least 12 nucleotides long. c) 'cagcagcagcagcag' that is at least 15 nucleotides long. no other subsequences are masked. The sequences with masked sites are outputed."
    em: "integer    Number of EM steps (default: 40). One might want to set it to a larger value (e.g. 80) in a seeded run, because such runs are fast. If you wish to scan the sequences with a PWM, set -em to 0."
    fem: "decimal    Fraction of sequences used in EM to obtain PWMs in an unseeded analysis (default: 0.5). For unseeded motif discovery in a large dataset (e.g. >10 million nt), one might want to set -fEM to a smaller value (e.g., 0.3 or 0.4) to reduce run time. Note that when only partial input data are used in EM and verbose is set to 1, the number of binding sites printed on screen is the number of sites found only in the fraction of sequences that are used in EM optimization[GR1]. This argument is ignored in a seeded analysis, which uses all sequences in EM."
    ext_trim: "1 or 0     Base extension and trimming (1 -yes, 0 -no) (default: 1)."
    n_motifs: "integer    Maximal number of motifs sought (default: 25)."
    max_w_three: "integer    Number of top-ranked trimers for spaced dyads (default: 20)."
    max_w_four: "integer    Number of top-ranked tetramers for spaced dyads (default: 40)."
    max_w_five: "integer    Number of top-ranked pentamers for spaced dyads (default: 60)."
    min_gap: "integer    Minimal number of unspecified nucleotides in spaced dyads (default: 0)."
    max_gap: "integer    Maximal number of unspecified nucleotides in spaced dyads (default: 10). -mingap and -maxgap control the lengths of spaced dyads, and, with -extrim, control motif lengths. Longer motifs can be discovered by setting -maxgap to larger values (e.g. 50). To identify short motifs (6-10 bps), set both -maxgap and -maxw5 to 0"
    use_score: "or 1     Use top-scoring sequences for deriving PWMs. Sequence (quality) scores should be stored in input sequence FA headers (see documentation). 0 - no (default, randomly select sequences), 1 - yes."
    f_pwm: "string     Name of output PWM file in STAMP format (http://www.benoslab.pitt.edu/stamp). (default: observedPWMs.txt). This file can be loaded into STAMP to compare each PWM with PWMs in databases for similarity."
    f_out: "string     Name of main GADEM output file (see documentation for description) (default: gadem.txt)."
    nbs: "integer    Number of sets of randomly simulated sequences (default: 10) using the [a,c,g,t] frequencies in the input sequences, with length matched between the two sets. Those sequences are used as the random sequences for assessing motif enrichment in the input data."
    verbose: "1 or 0     Print immediate results on screen [1-yes (default), 0-no]. These results include the motif consensus sequence, number of sites (in the subset of sequences subjected to EM optimization, see -fEM, above), and ln(E-value)."
    f_seq: ""
    optional: ""
    arguments: ""
  }
}