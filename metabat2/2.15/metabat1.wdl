version 1.0

task Metabat1 {
  input {
    Boolean? i
    Boolean? o
    Boolean? a
    Boolean? cv_ext
    Boolean? p
    String? p_one
    String? p_two
    String? min_prob
    String? min_binned
    Boolean? very_sensitive
    Boolean? sensitive
    Boolean? specific
    Boolean? very_specific
    Boolean? super_specific
    String? min_corr
    String? min_samples
    Boolean? arg_minimum_mean
    String? min_cvs_um
    Boolean? arg_minimum_size_bin_considered
    Boolean? arg_minimum_size_contig_considered
    String? min_contig_by_corr
    Boolean? arg_number_use
    String? min_shared
    Boolean? fuzzy
    Boolean? output_only_sequence
    Boolean? set_then_sample
    Boolean? arg_ignore_contigs
    String? save_tnf
    String? save_distance
    Boolean? save_cls
    Boolean? unbinned
    Boolean? no_bin_out
    Boolean? arg_number_bootstrapping
    String? pb
    String? seed
    Boolean? keep
    Boolean? _debug_output
    Boolean? _verbose_output
  }
  command <<<
    metabat1 \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-a" false="" a} \
      ~{true="--cvExt" false="" cv_ext} \
      ~{true="-p" false="" p} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(min_prob) then ("--minProb " +  '"' + min_prob + '"') else ""} \
      ~{if defined(min_binned) then ("--minBinned " +  '"' + min_binned + '"') else ""} \
      ~{true="--verysensitive" false="" very_sensitive} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--specific" false="" specific} \
      ~{true="--veryspecific" false="" very_specific} \
      ~{true="--superspecific" false="" super_specific} \
      ~{if defined(min_corr) then ("--minCorr " +  '"' + min_corr + '"') else ""} \
      ~{if defined(min_samples) then ("--minSamples " +  '"' + min_samples + '"') else ""} \
      ~{true="-x" false="" arg_minimum_mean} \
      ~{if defined(min_cvs_um) then ("--minCVSum " +  '"' + min_cvs_um + '"') else ""} \
      ~{true="-s" false="" arg_minimum_size_bin_considered} \
      ~{true="-m" false="" arg_minimum_size_contig_considered} \
      ~{if defined(min_contig_by_corr) then ("--minContigByCorr " +  '"' + min_contig_by_corr + '"') else ""} \
      ~{true="-t" false="" arg_number_use} \
      ~{if defined(min_shared) then ("--minShared " +  '"' + min_shared + '"') else ""} \
      ~{true="--fuzzy" false="" fuzzy} \
      ~{true="-l" false="" output_only_sequence} \
      ~{true="-S" false="" set_then_sample} \
      ~{true="-V" false="" arg_ignore_contigs} \
      ~{if defined(save_tnf) then ("--saveTNF " +  '"' + save_tnf + '"') else ""} \
      ~{if defined(save_distance) then ("--saveDistance " +  '"' + save_distance + '"') else ""} \
      ~{true="--saveCls" false="" save_cls} \
      ~{true="--unbinned" false="" unbinned} \
      ~{true="--noBinOut" false="" no_bin_out} \
      ~{true="-B" false="" arg_number_bootstrapping} \
      ~{if defined(pb) then ("--pB " +  '"' + pb + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--keep" false="" keep} \
      ~{true="-d" false="" _debug_output} \
      ~{true="-v" false="" _verbose_output}
  >>>
  parameter_meta {
    i: "[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]"
    o: "[ --outFile ] arg              Base file name for each bin. The default output is fasta format. Use -l  option to output only contig names [Mandatory]"
    a: "[ --abdFile ] arg              A file having mean and variance of base coverage depth (tab delimited;  the first column should be contig names, and the first row will be  considered as the header and be skipped) [Optional]"
    cv_ext: "When a coverage file without variance (from third party tools) is used  instead of abdFile from jgi_summarize_bam_contig_depths"
    p: "[ --pairFile ] arg             A file having paired reads mapping information. Use it to increase  sensitivity. (tab delimited; should have 3 columns of contig index  (ordered by), its mate contig index, and supporting mean read coverage.  The first row will be considered as the header and be skipped) [Optional]"
    p_one: "(=0)                     Probability cutoff for bin seeding. It mainly controls the number of  potential bins and their specificity. The higher, the more (specific)  bins would be. (Percentage; Should be between 0 and 100)"
    p_two: "(=0)                     Probability cutoff for secondary neighbors. It supports p1 and better be  close to p1. (Percentage; Should be between 0 and 100)"
    min_prob: "(=0)                Minimum probability for binning consideration. It controls sensitivity.  Usually it should be >= 75. (Percentage; Should be between 0 and 100)"
    min_binned: "(=0)              Minimum proportion of already binned neighbors for one's membership  inference. It contorls specificity. Usually it would be <= 50  (Percentage; Should be between 0 and 100)"
    very_sensitive: "For greater sensitivity, especially in a simple community. It is the  shortcut for --p1 90 --p2 85 --pB 20 --minProb 75 --minBinned 20  --minCorr 90"
    sensitive: "For better sensitivity [default]. It is the shortcut for --p1 90 --p2 90  --pB 20 --minProb 80 --minBinned 40 --minCorr 92"
    specific: "For better specificity. Different from --sensitive when using correlation binning or ensemble binning. It is the shortcut for --p1 90 --p2 90 --pB  30 --minProb 80 --minBinned 40 --minCorr 96"
    very_specific: "For greater specificity. No correlation binning for short contig  recruiting. It is the shortcut for --p1 90 --p2 90 --pB 40 --minProb 80  --minBinned 40"
    super_specific: "For the best specificity. It is the shortcut for --p1 95 --p2 90 --pB 50  --minProb 80 --minBinned 20"
    min_corr: "(=0)                Minimum pearson correlation coefficient for binning missed contigs to  increase sensitivity (Helpful when there are many samples). Should be  very high (>=90) to reduce contamination. (Percentage; Should be between  0 and 100; 0 disables)"
    min_samples: "(=10)            Minimum number of sample sizes for considering correlation based  recruiting"
    arg_minimum_mean: "[ --minCV ] arg (=1)           Minimum mean coverage of a contig to consider for abundance distance  calculation in each library"
    min_cvs_um: "(=2)               Minimum total mean coverage of a contig (sum of all libraries) to  consider for abundance distance calculation"
    arg_minimum_size_bin_considered: "[ --minClsSize ] arg (=200000) Minimum size of a bin to be considered as the output"
    arg_minimum_size_contig_considered: "[ --minContig ] arg (=2500)    Minimum size of a contig to be considered for binning (should be >=1500;  ideally >=2500). If # of samples >= minSamples, small contigs (>=1000)  will be given a chance to be recruited to existing bins by default."
    min_contig_by_corr: "(=1000)     Minimum size of a contig to be considered for recruiting by pearson  correlation coefficients (activated only if # of samples >= minSamples;  disabled when minContigByCorr > minContig)"
    arg_number_use: "[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)"
    min_shared: "(=50)             Percentage cutoff for merging fuzzy contigs"
    fuzzy: "Binning with fuzziness which assigns multiple memberships of a contig to  bins (activated only with --pairFile at the moment)"
    output_only_sequence: "[ --onlyLabel ]                Output only sequence labels as a list in a column without sequences"
    set_then_sample: "[ --sumLowCV ]                 If set, then every sample that falls below the minCV will be used in an  aggregate sample"
    arg_ignore_contigs: "[ --maxVarRatio ] arg (=0)     Ignore any contigs where variance / mean exceeds this ratio (0 disables)"
    save_tnf: "File to save (or load if exists) TNF matrix for each contig in input"
    save_distance: "File to save (or load if exists) distance graph at lowest probability  cutoff"
    save_cls: "Save cluster memberships as a matrix format"
    unbinned: "Generate [outFile].unbinned.fa file for unbinned contigs"
    no_bin_out: "No bin output. Usually combined with --saveCls to check only contig  memberships"
    arg_number_bootstrapping: "[ --B ] arg (=20)              Number of bootstrapping for ensemble binning (Recommended to be >=20)"
    pb: "(=50)                    Proportion of shared membership in bootstrapping. Major control for  sensitivity/specificity. The higher, the specific. (Percentage; Should be between 0 and 100)"
    seed: "(=0)                   For reproducibility in ensemble binning, though it might produce slightly different results. (0: use random seed)"
    keep: "Keep the intermediate files for later usage"
    _debug_output: "[ --debug ]                    Debug output"
    _verbose_output: "[ --verbose ]                  Verbose output"
  }
}