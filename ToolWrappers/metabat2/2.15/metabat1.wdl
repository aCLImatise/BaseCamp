version 1.0

task Metabat1 {
  input {
    Boolean? i
    File? arg_base_file
    Boolean? arg_file_having
    Boolean? cv_ext
    Boolean? arg_file_paired
    Int? p_one
    Int? p_two
    Int? min_prob
    Int? min_binned
    Boolean? very_sensitive
    Boolean? sensitive
    Boolean? very_specific
    Boolean? super_specific
    Int? min_samples
    Int? min_cvs_um
    Boolean? arg_minimum_size_bin
    Boolean? arg_minimum_size_considered
    Int? min_contig_by_corr
    Boolean? arg_number_use
    Int? min_shared
    Boolean? fuzzy
    Boolean? output_only_sequence
    Boolean? set_then_sample
    Boolean? arg_ignore_contigs
    File? save_tnf
    File? save_distance
    Boolean? unbinned
    Boolean? no_bin_out
    Int? seed
    Boolean? keep
    Boolean? _debug_output
    Boolean? _verbose_output
    String recruiting
    String cut_off
    String memberships
  }
  command <<<
    metabat1 \
      ~{recruiting} \
      ~{cut_off} \
      ~{memberships} \
      ~{if (i) then "-i" else ""} \
      ~{if (arg_base_file) then "-o" else ""} \
      ~{if (arg_file_having) then "-a" else ""} \
      ~{if (cv_ext) then "--cvExt" else ""} \
      ~{if (arg_file_paired) then "-p" else ""} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(min_prob) then ("--minProb " +  '"' + min_prob + '"') else ""} \
      ~{if defined(min_binned) then ("--minBinned " +  '"' + min_binned + '"') else ""} \
      ~{if (very_sensitive) then "--verysensitive" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (very_specific) then "--veryspecific" else ""} \
      ~{if (super_specific) then "--superspecific" else ""} \
      ~{if defined(min_samples) then ("--minSamples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(min_cvs_um) then ("--minCVSum " +  '"' + min_cvs_um + '"') else ""} \
      ~{if (arg_minimum_size_bin) then "-s" else ""} \
      ~{if (arg_minimum_size_considered) then "-m" else ""} \
      ~{if defined(min_contig_by_corr) then ("--minContigByCorr " +  '"' + min_contig_by_corr + '"') else ""} \
      ~{if (arg_number_use) then "-t" else ""} \
      ~{if defined(min_shared) then ("--minShared " +  '"' + min_shared + '"') else ""} \
      ~{if (fuzzy) then "--fuzzy" else ""} \
      ~{if (output_only_sequence) then "-l" else ""} \
      ~{if (set_then_sample) then "-S" else ""} \
      ~{if (arg_ignore_contigs) then "-V" else ""} \
      ~{if defined(save_tnf) then ("--saveTNF " +  '"' + save_tnf + '"') else ""} \
      ~{if defined(save_distance) then ("--saveDistance " +  '"' + save_distance + '"') else ""} \
      ~{if (unbinned) then "--unbinned" else ""} \
      ~{if (no_bin_out) then "--noBinOut" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (_debug_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]"
    arg_base_file: "[ --outFile ] arg              Base file name for each bin. The default output is fasta format. Use -l\\noption to output only contig names [Mandatory]"
    arg_file_having: "[ --abdFile ] arg              A file having mean and variance of base coverage depth (tab delimited;\\nthe first column should be contig names, and the first row will be\\nconsidered as the header and be skipped) [Optional]"
    cv_ext: "When a coverage file without variance (from third party tools) is used\\ninstead of abdFile from jgi_summarize_bam_contig_depths"
    arg_file_paired: "[ --pairFile ] arg             A file having paired reads mapping information. Use it to increase\\nsensitivity. (tab delimited; should have 3 columns of contig index\\n(ordered by), its mate contig index, and supporting mean read coverage.\\nThe first row will be considered as the header and be skipped) [Optional]"
    p_one: "(=0)                     Probability cutoff for bin seeding. It mainly controls the number of\\npotential bins and their specificity. The higher, the more (specific)\\nbins would be. (Percentage; Should be between 0 and 100)"
    p_two: "(=0)                     Probability cutoff for secondary neighbors. It supports p1 and better be\\nclose to p1. (Percentage; Should be between 0 and 100)"
    min_prob: "(=0)                Minimum probability for binning consideration. It controls sensitivity.\\nUsually it should be >= 75. (Percentage; Should be between 0 and 100)"
    min_binned: "For better specificity. Different from --sensitive when using correlation"
    very_sensitive: "For greater sensitivity, especially in a simple community. It is the\\nshortcut for --p1 90 --p2 85 --pB 20 --minProb 75 --minBinned 20\\n--minCorr 90"
    sensitive: "For better sensitivity [default]. It is the shortcut for --p1 90 --p2 90"
    very_specific: "For greater specificity. No correlation binning for short contig\\nrecruiting. It is the shortcut for --p1 90 --p2 90 --pB 40 --minProb 80\\n--minBinned 40"
    super_specific: "For the best specificity. It is the shortcut for --p1 95 --p2 90 --pB 50"
    min_samples: "(=10)            Minimum number of sample sizes for considering correlation based"
    min_cvs_um: "(=2)               Minimum total mean coverage of a contig (sum of all libraries) to\\nconsider for abundance distance calculation"
    arg_minimum_size_bin: "[ --minClsSize ] arg (=200000) Minimum size of a bin to be considered as the output"
    arg_minimum_size_considered: "[ --minContig ] arg (=2500)    Minimum size of a contig to be considered for binning (should be >=1500;\\nideally >=2500). If # of samples >= minSamples, small contigs (>=1000)\\nwill be given a chance to be recruited to existing bins by default."
    min_contig_by_corr: "(=1000)     Minimum size of a contig to be considered for recruiting by pearson\\ncorrelation coefficients (activated only if # of samples >= minSamples;\\ndisabled when minContigByCorr > minContig)"
    arg_number_use: "[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)"
    min_shared: "(=50)             Percentage cutoff for merging fuzzy contigs"
    fuzzy: "Binning with fuzziness which assigns multiple memberships of a contig to\\nbins (activated only with --pairFile at the moment)"
    output_only_sequence: "[ --onlyLabel ]                Output only sequence labels as a list in a column without sequences"
    set_then_sample: "[ --sumLowCV ]                 If set, then every sample that falls below the minCV will be used in an\\naggregate sample"
    arg_ignore_contigs: "[ --maxVarRatio ] arg (=0)     Ignore any contigs where variance / mean exceeds this ratio (0 disables)"
    save_tnf: "File to save (or load if exists) TNF matrix for each contig in input"
    save_distance: "File to save (or load if exists) distance graph at lowest probability"
    unbinned: "Generate [outFile].unbinned.fa file for unbinned contigs"
    no_bin_out: "No bin output. Usually combined with --saveCls to check only contig"
    seed: "(=0)                   For reproducibility in ensemble binning, though it might produce slightly\\ndifferent results. (0: use random seed)"
    keep: "Keep the intermediate files for later usage"
    _debug_output: "[ --debug ]                    Debug output"
    _verbose_output: "[ --verbose ]                  Verbose output"
    recruiting: "-x [ --minCV ] arg (=1)           Minimum mean coverage of a contig to consider for abundance distance "
    cut_off: "--saveCls                         Save cluster memberships as a matrix format"
    memberships: "-B [ --B ] arg (=20)              Number of bootstrapping for ensemble binning (Recommended to be >=20)"
  }
  output {
    File out_stdout = stdout()
    File out_arg_base_file = "${in_arg_base_file}"
  }
}