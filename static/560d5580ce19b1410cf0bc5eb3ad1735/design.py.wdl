version 1.0

task Designpy {
  input {
    File? output_probes
    Int? probe_length
    String? probe_stride
    String? mismatches
    Int? lcf_th_res
    Int? island_of_exact_match
    Int? custom_hybridization_fn
    Float? coverage
    Int? cover_extension
    Boolean? identify
    Array[String] blacklist_genomes
    String? mismatches_tolerant
    String? lcf_th_res_tolerant
    String? island_of_exact_match_tolerant
    String? custom_hybridization_fn_tolerant
    Boolean? print_analysis
    File? write_analysis_to_tsv
    File? write_sliding_window_coverage
    File? filter_from_fast_a
    Boolean? skip_set_cover
    Boolean? add_adapters
    Int? adapter_a
    Int? adapter_b
    String? filter_polya
    Boolean? add_reverse_complements
    Boolean? expand_n
    String? limit_target_genomes
    String? limit_target_genomes_randomly_with_replacement
    Float? cluster_and_design_separately
    Int? cluster_from_fragments
    Int? filter_with_lsh_hamming
    Int? filter_with_lsh_min_hash
    Boolean? cover_groupings_separately
    Int? small_seq_skip
    Int? small_seq_min
    Int? max_num_processes
    Int? km_er_probe_map_k
    Boolean? use_native_dict_when_finding_tolerant_coverage
    Boolean? debug
    Boolean? verbose
    String dataset
  }
  command <<<
    design_py \
      ~{dataset} \
      ~{if defined(output_probes) then ("--output-probes " +  '"' + output_probes + '"') else ""} \
      ~{if defined(probe_length) then ("--probe-length " +  '"' + probe_length + '"') else ""} \
      ~{if defined(probe_stride) then ("--probe-stride " +  '"' + probe_stride + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(lcf_th_res) then ("--lcf-thres " +  '"' + lcf_th_res + '"') else ""} \
      ~{if defined(island_of_exact_match) then ("--island-of-exact-match " +  '"' + island_of_exact_match + '"') else ""} \
      ~{if defined(custom_hybridization_fn) then ("--custom-hybridization-fn " +  '"' + custom_hybridization_fn + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(cover_extension) then ("--cover-extension " +  '"' + cover_extension + '"') else ""} \
      ~{if (identify) then "--identify" else ""} \
      ~{if defined(blacklist_genomes) then ("--blacklist-genomes " +  '"' + blacklist_genomes + '"') else ""} \
      ~{if defined(mismatches_tolerant) then ("--mismatches-tolerant " +  '"' + mismatches_tolerant + '"') else ""} \
      ~{if defined(lcf_th_res_tolerant) then ("--lcf-thres-tolerant " +  '"' + lcf_th_res_tolerant + '"') else ""} \
      ~{if defined(island_of_exact_match_tolerant) then ("--island-of-exact-match-tolerant " +  '"' + island_of_exact_match_tolerant + '"') else ""} \
      ~{if defined(custom_hybridization_fn_tolerant) then ("--custom-hybridization-fn-tolerant " +  '"' + custom_hybridization_fn_tolerant + '"') else ""} \
      ~{if (print_analysis) then "--print-analysis" else ""} \
      ~{if defined(write_analysis_to_tsv) then ("--write-analysis-to-tsv " +  '"' + write_analysis_to_tsv + '"') else ""} \
      ~{if defined(write_sliding_window_coverage) then ("--write-sliding-window-coverage " +  '"' + write_sliding_window_coverage + '"') else ""} \
      ~{if defined(filter_from_fast_a) then ("--filter-from-fasta " +  '"' + filter_from_fast_a + '"') else ""} \
      ~{if (skip_set_cover) then "--skip-set-cover" else ""} \
      ~{if (add_adapters) then "--add-adapters" else ""} \
      ~{if defined(adapter_a) then ("--adapter-a " +  '"' + adapter_a + '"') else ""} \
      ~{if defined(adapter_b) then ("--adapter-b " +  '"' + adapter_b + '"') else ""} \
      ~{if defined(filter_polya) then ("--filter-polya " +  '"' + filter_polya + '"') else ""} \
      ~{if (add_reverse_complements) then "--add-reverse-complements" else ""} \
      ~{if (expand_n) then "--expand-n" else ""} \
      ~{if defined(limit_target_genomes) then ("--limit-target-genomes " +  '"' + limit_target_genomes + '"') else ""} \
      ~{if defined(limit_target_genomes_randomly_with_replacement) then ("--limit-target-genomes-randomly-with-replacement " +  '"' + limit_target_genomes_randomly_with_replacement + '"') else ""} \
      ~{if defined(cluster_and_design_separately) then ("--cluster-and-design-separately " +  '"' + cluster_and_design_separately + '"') else ""} \
      ~{if defined(cluster_from_fragments) then ("--cluster-from-fragments " +  '"' + cluster_from_fragments + '"') else ""} \
      ~{if defined(filter_with_lsh_hamming) then ("--filter-with-lsh-hamming " +  '"' + filter_with_lsh_hamming + '"') else ""} \
      ~{if defined(filter_with_lsh_min_hash) then ("--filter-with-lsh-minhash " +  '"' + filter_with_lsh_min_hash + '"') else ""} \
      ~{if (cover_groupings_separately) then "--cover-groupings-separately" else ""} \
      ~{if defined(small_seq_skip) then ("--small-seq-skip " +  '"' + small_seq_skip + '"') else ""} \
      ~{if defined(small_seq_min) then ("--small-seq-min " +  '"' + small_seq_min + '"') else ""} \
      ~{if defined(max_num_processes) then ("--max-num-processes " +  '"' + max_num_processes + '"') else ""} \
      ~{if defined(km_er_probe_map_k) then ("--kmer-probe-map-k " +  '"' + km_er_probe_map_k + '"') else ""} \
      ~{if (use_native_dict_when_finding_tolerant_coverage) then "--use-native-dict-when-finding-tolerant-coverage" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_probes: "The file to which all final probes should be written;\\nthey are written in FASTA format"
    probe_length: "(Optional) Make probes be PROBE_LENGTH nt long"
    probe_stride: "(Optional) Generate candidate probes from the input\\nthat are separated by PROBE_STRIDE nt"
    mismatches: "(Optional) Allow for MISMATCHES mismatches when\\ndetermining whether a probe covers a sequence"
    lcf_th_res: "(Optional) Say that a portion of a probe covers a\\nportion of a sequence if the two share a substring\\nwith at most MISMATCHES mismatches that has length >=\\nLCF_THRES nt; if unspecified, this is set to\\nPROBE_LENGTH"
    island_of_exact_match: "(Optional) When determining whether a probe covers a\\nsequence, require that there be an exact match (i.e.,\\nno mismatches) of length at least\\nISLAND_OF_EXACT_MATCH nt between a portion of the\\nprobe and a portion of the sequence"
    custom_hybridization_fn: "CUSTOM_HYBRIDIZATION_FN\\n(Optional) Args: <PATH> <FUNC>; PATH is a path to a\\nPython module (.py file) and FUNC is a string giving\\nthe name of a function in that module. FUNC provides a\\ncustom model of hybridization between a probe and\\ntarget sequence to use in the probe set design. If\\nthis is set, the arguments --mismatches, --lcf-thres,\\nand --island-of-exact-match are not used because these\\nare meant for the default model of hybridization. The\\nfunction FUNC in PATH is dynamically loaded to use\\nwhen determining whether a probe hybridizes to a\\ntarget sequence (and, if so, what portion). FUNC must\\naccept the following arguments in order, though it may\\nchoose to ignore some values: (1) array giving\\nsequence of a probe; (2) str giving subsequence of\\ntarget sequence to which the probe may hybridize, of\\nthe same length as the given probe sequence; (3) int\\ngiving the position in the probe (equivalently, the\\ntarget subsequence) of the start of a k-mer around\\nwhich the probe and target subsequence are anchored\\n(the probe and target subsequence are aligned using\\nthis k-mer as an anchor); (4) int giving the end\\nposition (exclusive) of the anchor k-mer; (5) int\\ngiving the full length of the probe (the probe\\nprovided in (1) may be cutoff on an end if it extends\\nfurther than where the target sequence ends); (6) int\\ngiving the full length of the target sequence of which\\nthe subsequence in (2) is part. FUNC must return None\\nif it deems that the probe does not hybridize to the\\ntarget subsequence; otherwise, it must return a tuple\\n(start, end) where start is an int giving the start\\nposition in the probe (equivalently, in the target\\nsubsequence) at which the probe will hybridize to the\\ntarget subsequence, and end is an int (exclusive)\\ngiving the end position of the hybridization."
    coverage: "If this is a float in [0,1], it gives the fraction of\\neach target genome that must be covered by the\\nselected probes; if this is an int > 1, it gives the\\nnumber of bp of each target genome that must be\\ncovered by the selected probes"
    cover_extension: "Extend the coverage of each side of a probe by\\nCOVER_EXTENSION nt. That is, a probe covers a region\\nthat consists of the portion of a sequence it\\nhybridizes to, as well as this number of nt on each\\nside of that portion. This is useful in modeling\\nhybrid selection, where a probe hybridizes toa\\nfragment that includes the region targeted by the\\nprobe, along with surrounding portions of the\\nsequence. Increasing its value should reduce the\\nnumber of probes required to achieve the desired\\ncoverage."
    identify: "Design probes meant to make it possible to identify\\nnucleic acid from a particular input dataset against\\nthe other datasets; when set, the coverage should\\ngenerally be small"
    blacklist_genomes: "One or more blacklisted genomes; penalize probes based\\non how much of each of these genomes they cover. If\\nthe value is a path to a file, then that file is\\ntreated as a FASTA file and its sequences are read.\\nOtherwise, it is assumed that this is a label for a\\ndataset included in this package (e.g., 'zika')."
    mismatches_tolerant: "(Optional) A more tolerant value for 'mismatches';\\nthis should be greater than the value of MISMATCHES.\\nAllows for capturing more possible hybridizations\\n(i.e., more sensitivity) when designing probes for\\nidentification or when genomes are blacklisted."
    lcf_th_res_tolerant: "(Optional) A more tolerant value for 'lcf_thres'; this\\nshould be less than LCF_THRES. Allows for capturing\\nmore possible hybridizations (i.e., more sensitivity)\\nwhen designing probes for identification or when\\ngenomes are blacklisted."
    island_of_exact_match_tolerant: "(Optional) A more tolerant value for\\n'island_of_exact_match'; this should be less than\\nISLAND_OF_ EXACT_MATCH. Allows for capturing more\\npossible hybridizations (i.e., more sensitivity) when\\ndesigning probes for identification or when genomes\\nare blacklisted."
    custom_hybridization_fn_tolerant: "CUSTOM_HYBRIDIZATION_FN_TOLERANT\\n(Optional) A more tolerant model than the one\\nimplemented in custom_hybridization_fn. This should\\ncapture more possible hybridizations (i.e., be more\\nsensitive) when designing probes for identification or\\nwhen genomes are blacklisted. See --custom-\\nhybridization-fn for details of how this function\\nshould be implemented and provided."
    print_analysis: "Print analysis of the probe set's coverage"
    write_analysis_to_tsv: "(Optional) The file to which to write a TSV-formatted\\nmatrix of the probe set's coverage analysis"
    write_sliding_window_coverage: "(Optional) The file to which to write the average\\ncoverage achieved by the probe set within sliding\\nwindows of each target genome"
    filter_from_fast_a: "(Optional) A FASTA file from which to select candidate\\nprobes. Before running any other filters, keep only\\nthe candidate probes that are equal to sequences in\\nthe file and remove all probes not equal to any of\\nthese sequences. This, by default, ignores sequences\\nin the file whose header contains the string 'reverse\\ncomplement'; that is, if there is some probe with\\nsequence S, it may be filtered out (even if there is a\\nsequence S in the file) if the header of S in the file\\ncontains 'reverse complement'. This is useful if we\\nalready have probes decided by the set cover filter,\\nbut simply want to process them further by, e.g.,\\nadding adapters or running a coverage analysis. For\\nexample, if we have already run the time-consuming set\\ncover filter and have a FASTA containing those probes,\\nwe can provide a path to that FASTA file for this\\nargument, and also provide the --skip-set-cover\\nargument, in order to add adapters to those probes\\nwithout having to re-run the set cover filter."
    skip_set_cover: "Skip the set cover filter; this is useful when we wish\\nto see the probes generated from only the duplicate\\nand reverse complement filters, to gauge the effects\\nof the set cover filter"
    add_adapters: "Add adapters to the ends of probes; to specify adapter\\nsequences, use --adapter-a and --adapter-b"
    adapter_a: "ADAPTER_A\\n(Optional) Args: <X> <Y>; Custom A adapter to use; two\\nordered where X is the A adapter sequence to place on\\nthe 5' end of a probe and Y is the A adapter sequence\\nto place on the 3' end of a probe"
    adapter_b: "ADAPTER_B\\n(Optional) Args: <X> <Y>; Custom B adapter to use; two\\nordered where X is the B adapter sequence to place on\\nthe 5' end of a probe and Y is the B adapter sequence\\nto place on the 3' end of a probe"
    filter_polya: "FILTER_POLYA\\n(Optional) Args: <X> <Y> (integers); do not output any\\nprobe that contains a stretch of X or more 'A' bases,\\ntolerating up to Y mismatches (and likewise for 'T'\\nbases)"
    add_reverse_complements: "Add to the output the reverse complement of each probe"
    expand_n: "[EXPAND_N]\\nExpand each probe so that 'N' bases are replaced by\\nreal bases; for example, the probe 'ANA' would be\\nreplaced with the probes 'AAA', 'ATA', 'ACA', and\\n'AGA'; this is done combinatorially across all 'N'\\nbases in a probe, and thus the number of new probes\\ngrows exponentially with the number of 'N' bases in a\\nprobe. If followed by a command- line argument (INT),\\nthis only expands at most INT randomly selected N\\nbases, and the rest are replaced with random\\nunambiguous bases (default INT is 3)."
    limit_target_genomes: "(Optional) Use only the first LIMIT_TARGET_GENOMES\\ntarget genomes in the dataset"
    limit_target_genomes_randomly_with_replacement: "(Optional) Randomly select\\nLIMIT_TARGET_GENOMES_RANDOMLY_WITH_REPLACMENT target\\ngenomes in the dataset with replacement"
    cluster_and_design_separately: "(Optional) If set, cluster all input sequences using\\ntheir MinHash signatures, design probes separately on\\neach cluster, and combine the resulting probes. This\\ncan significantly lower runtime and memory usage, but\\nmay lead to a suboptimal solution. The value\\nCLUSTER_AND_DESIGN_SEPARATELY gives the inter-cluster\\ndistance threshold to merge clusters (1-ANI, where ANI\\nis average nucleotide identity); higher values result\\nin fewer clusters, and thus longer runtime. Values\\nmust be in (0,0.5], and generally should be around 0.1\\nor 0.2. When used, this creates a separate genome for\\neach input sequence -- it collapses all sequences,\\nacross both groups and genomes, into one list of\\nsequences in one group. Therefore, genomes will not be\\ngrouped as specified in the input and sequences will\\nnot be grouped by genome, and differential\\nidentification is not supported"
    cluster_from_fragments: "(Optional) If set, break all sequences into sequences\\nof length CLUSTER_FROM_FRAGMENTS nt, and cluster these\\nfragments. This can be useful for improving runtime on\\ninput with especially large genomes, in which probes\\nfor different fragments can be designed separately.\\nValues should generally be around 10,000. For this to\\nbe used, --cluster-and-design-separately must also be\\nset."
    filter_with_lsh_hamming: "(Optional) If set, filter candidate probes for near-\\nduplicates using LSH with a family of hash functions\\nthat works with Hamming distance.\\nFILTER_WITH_LSH_HAMMING gives the maximum Hamming\\ndistance at which to call near-duplicates; it should\\nbe commensurate with (but not greater than)\\nMISMATCHES. Using this may significantly improve\\nruntime and reduce memory usage by reducing the number\\nof candidate probes to consider, but may lead to a\\nslightly sub-optimal solution. It may also,\\nparticularly with relatively high values of\\nFILTER_WITH_LSH_HAMMING, cause coverage obtained for\\neach genome to be slightly less than the desired\\ncoverage (COVERAGE) when that desired coverage is the\\ncomplete genome; it is recommended to also use\\n--print-analysis or --write-analysis-to-tsv with this\\nto see the coverage that is obtained."
    filter_with_lsh_min_hash: "(Optional) If set, filter candidate probes for near-\\nduplicates using LSH with a MinHash family.\\nFILTER_WITH_LSH_MINHASH gives the maximum Jaccard\\ndistance (1 minus Jaccard similarity) at which to call\\nnear-duplicates; the Jaccard similarity is calculated\\nby treating each probe as a set of overlapping\\n10-mers. Its value should be commensurate with\\nparameter values determining whether a probe\\nhybridizes to a target sequence, but this can be\\ndifficult to measure compared to the input for\\n--filter-with-lsh-hamming. However, this allows more\\nsensitivity in near-duplicate detection than --filter-\\nwith-lsh-hamming (e.g., if near-duplicates should\\ninvolve probes shifted relative to each other). The\\nsame caveats mentioned in help for --filter-with-lsh-\\nhamming also apply here. Values of\\nFILTER_WITH_LSH_MINHASH above ~0.7 may start to\\nrequire significant memory and runtime for near-\\nduplicate detection."
    cover_groupings_separately: "Run a separate instance of set cover with the target\\ngenomes from each grouping and pool (union) the\\nresulting probes. When set, the software will run\\nfaster than when not set, but it may yield more probes\\nthan when it is not set."
    small_seq_skip: "(Optional) Do not create candidate probes from\\nsequences whose length is <= SMALL_SEQ_SKIP. If set to\\n(PROBE_LENGTH - 1), this avoids the error raised when\\nsequences are less than the probe length"
    small_seq_min: "(Optional) If set, allow sequences as input that are\\nshorter than PROBE_LENGTH (when not set, the program\\nwill error on such input). SMALL_SEQ_MIN is the\\nminimum sequence length that should be accepted as\\ninput. When a sequence is less than PROBE_LENGTH, a\\ncandidate probe is created that is equal to the\\nsequence; thus, the output probes may have different\\nlengths. Note that, when this is set, it might be a\\ngood idea to also set LCF_THRES to be a value smaller\\nthan PROBE_LENGTH -- e.g., the length of the shortest\\ninput sequence; otherwise, when a probe of length p_l\\nis mapped to a sequence of length s_l, then lcf_thres\\nis treated as being min(LCF_THRES, p_l, s_l) so that a\\nprobe is able to 'cover' a sequence shorter than the\\nprobe and so that a probe shorter than lcf_thres is\\nable to 'cover' a sequence"
    max_num_processes: "(Optional) An int >= 1 that gives the maximum number\\nof processes to use in multiprocessing pools; uses\\nmin(number of CPUs in the system, MAX_NUM_PROCESSES)\\nprocesses"
    km_er_probe_map_k: "(Optional) Use this value (KMER_PROBE_LENGTH_K) as the\\nk-mer length when constructing a map of k-mers to the\\nprobes that contain these k-mers. This map is used\\nwhen mapping candidate probes to target sequences and\\nthe k-mers serve as seeds for calculating whether a\\ncandidate probe 'covers' a subsequence. The value\\nshould be sufficiently less than PROBE_LENGTH so that\\nit can find mappings even when the candidate probe and\\ntarget sequence are divergent. In particular, CATCH\\nwill try to find a value k >= KMER_PROBE_LENGTH_K (by\\ndefault, >=20) such that k divides PROBE_LENGTH and k\\n< PROBE_LENGTH / MISMATCHES (if MISMATCHES=0, then\\nk=PROBE_LENGTH). It will then use this k as the k-mer\\nlength in mappings; if no such k exists, it will use a\\nrandomized approach with KMER_PROBE_LENGTH_K as the\\nk-mer length. If --custom-hybridization-fn is set, it\\nwill always use the randomized approach with\\nKMER_PROBE_LENGTH_K (by default, 20) as the k-mer\\nlength."
    use_native_dict_when_finding_tolerant_coverage: "When finding probe coverage for blacklisting and\\nidentification (i.e., when using tolerant parameters),\\nuse a native Python dict as the kmer_probe_map across\\nprocesses, rather than the primitives in\\nSharedKmerProbeMap that are more suited to sharing\\nacross processes. Depending on the input (particularly\\nif there are many candidate probes) this may result in\\nsubstantial memory usage; but it may provide an\\nimprovement in runtime when there are relatively few\\ncandidate probes and a very large blacklisted input"
    debug: "Debug output"
    verbose: "Verbose output"
    dataset: "One or more target datasets (e.g., one per species).\\nEach dataset can be specified in one of multiple ways.\\n(a) If dataset is in the format 'download:TAXID', then\\nCATCH downloads from NCBI all whole genomes for the\\nNCBI taxonomy with id TAXID, and uses these sequences\\nas input. (b) If dataset is a path to a FASTA file,\\nthen its sequences are read and used as input. (c)\\nOtherwise, it is assumed that this is a label for a\\ndataset included in this package (e.g., 'zika'). If\\nthe label starts with 'colleciton:' (e.g.,\\n'collection:viruses_with_human_host'), then this reads\\nfrom an available collection of datasets."
  }
  output {
    File out_stdout = stdout()
    File out_filter_from_fast_a = "${in_filter_from_fast_a}"
  }
}