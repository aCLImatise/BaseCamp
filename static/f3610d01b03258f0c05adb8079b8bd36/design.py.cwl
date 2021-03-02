class: CommandLineTool
id: design.py.cwl
inputs:
- id: in_output_probes
  doc: "The file to which all final probes should be written;\nthey are written in\
    \ FASTA format"
  type: File?
  inputBinding:
    prefix: --output-probes
- id: in_write_taxid_acc
  doc: "If 'download:' labels are used in datasets, write\ndownloaded accessions to\
    \ a file in this directory.\nAccessions are written to WRITE_TAXID_ACC/TAXID.txt"
  type: File?
  inputBinding:
    prefix: --write-taxid-acc
- id: in_probe_length
  doc: (Optional) Make probes be PROBE_LENGTH nt long
  type: long?
  inputBinding:
    prefix: --probe-length
- id: in_probe_stride
  doc: "(Optional) Generate candidate probes from the input\nthat are separated by\
    \ PROBE_STRIDE nt"
  type: string?
  inputBinding:
    prefix: --probe-stride
- id: in_mismatches
  doc: "(Optional) Allow for MISMATCHES mismatches when\ndetermining whether a probe\
    \ covers a sequence"
  type: string?
  inputBinding:
    prefix: --mismatches
- id: in_lcf_th_res
  doc: "(Optional) Say that a portion of a probe covers a\nportion of a sequence if\
    \ the two share a substring\nwith at most MISMATCHES mismatches that has length\
    \ >=\nLCF_THRES nt; if unspecified, this is set to\nPROBE_LENGTH"
  type: long?
  inputBinding:
    prefix: --lcf-thres
- id: in_island_of_exact_match
  doc: "(Optional) When determining whether a probe covers a\nsequence, require that\
    \ there be an exact match (i.e.,\nno mismatches) of length at least\nISLAND_OF_EXACT_MATCH\
    \ nt between a portion of the\nprobe and a portion of the sequence"
  type: long?
  inputBinding:
    prefix: --island-of-exact-match
- id: in_custom_hybridization_fn
  doc: "CUSTOM_HYBRIDIZATION_FN\n(Optional) Args: <PATH> <FUNC>; PATH is a path to\
    \ a\nPython module (.py file) and FUNC is a string giving\nthe name of a function\
    \ in that module. FUNC provides a\ncustom model of hybridization between a probe\
    \ and\ntarget sequence to use in the probe set design. If\nthis is set, the arguments\
    \ --mismatches, --lcf-thres,\nand --island-of-exact-match are not used because\
    \ these\nare meant for the default model of hybridization. The\nfunction FUNC\
    \ in PATH is dynamically loaded to use\nwhen determining whether a probe hybridizes\
    \ to a\ntarget sequence (and, if so, what portion). FUNC must\naccept the following\
    \ arguments in order, though it may\nchoose to ignore some values: (1) array giving\n\
    sequence of a probe; (2) str giving subsequence of\ntarget sequence to which the\
    \ probe may hybridize, of\nthe same length as the given probe sequence; (3) int\n\
    giving the position in the probe (equivalently, the\ntarget subsequence) of the\
    \ start of a k-mer around\nwhich the probe and target subsequence are anchored\n\
    (the probe and target subsequence are aligned using\nthis k-mer as an anchor);\
    \ (4) int giving the end\nposition (exclusive) of the anchor k-mer; (5) int\n\
    giving the full length of the probe (the probe\nprovided in (1) may be cutoff\
    \ on an end if it extends\nfurther than where the target sequence ends); (6) int\n\
    giving the full length of the target sequence of which\nthe subsequence in (2)\
    \ is part. FUNC must return None\nif it deems that the probe does not hybridize\
    \ to the\ntarget subsequence; otherwise, it must return a tuple\n(start, end)\
    \ where start is an int giving the start\nposition in the probe (equivalently,\
    \ in the target\nsubsequence) at which the probe will hybridize to the\ntarget\
    \ subsequence, and end is an int (exclusive)\ngiving the end position of the hybridization."
  type: long?
  inputBinding:
    prefix: --custom-hybridization-fn
- id: in_coverage
  doc: "If this is a float in [0,1], it gives the fraction of\neach target genome\
    \ that must be covered by the\nselected probes; if this is an int > 1, it gives\
    \ the\nnumber of bp of each target genome that must be\ncovered by the selected\
    \ probes"
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_cover_extension
  doc: "Extend the coverage of each side of a probe by\nCOVER_EXTENSION nt. That is,\
    \ a probe covers a region\nthat consists of the portion of a sequence it\nhybridizes\
    \ to, as well as this number of nt on each\nside of that portion. This is useful\
    \ in modeling\nhybrid selection, where a probe hybridizes toa\nfragment that includes\
    \ the region targeted by the\nprobe, along with surrounding portions of the\n\
    sequence. Increasing its value should reduce the\nnumber of probes required to\
    \ achieve the desired\ncoverage."
  type: long?
  inputBinding:
    prefix: --cover-extension
- id: in_identify
  doc: "Design probes meant to make it possible to identify\nnucleic acid from a particular\
    \ input dataset against\nthe other datasets; when set, the coverage should\ngenerally\
    \ be small"
  type: boolean?
  inputBinding:
    prefix: --identify
- id: in_blacklist_genomes
  doc: "One or more blacklisted genomes; penalize probes based\non how much of each\
    \ of these genomes they cover. If\nthe value is a path to a file, then that file\
    \ is\ntreated as a FASTA file and its sequences are read.\nOtherwise, it is assumed\
    \ that this is a label for a\ndataset included in this package (e.g., 'zika')."
  type: string[]
  inputBinding:
    prefix: --blacklist-genomes
- id: in_mismatches_tolerant
  doc: "(Optional) A more tolerant value for 'mismatches';\nthis should be greater\
    \ than the value of MISMATCHES.\nAllows for capturing more possible hybridizations\n\
    (i.e., more sensitivity) when designing probes for\nidentification or when genomes\
    \ are blacklisted."
  type: string?
  inputBinding:
    prefix: --mismatches-tolerant
- id: in_lcf_th_res_tolerant
  doc: "(Optional) A more tolerant value for 'lcf_thres'; this\nshould be less than\
    \ LCF_THRES. Allows for capturing\nmore possible hybridizations (i.e., more sensitivity)\n\
    when designing probes for identification or when\ngenomes are blacklisted."
  type: string?
  inputBinding:
    prefix: --lcf-thres-tolerant
- id: in_island_of_exact_match_tolerant
  doc: "(Optional) A more tolerant value for\n'island_of_exact_match'; this should\
    \ be less than\nISLAND_OF_ EXACT_MATCH. Allows for capturing more\npossible hybridizations\
    \ (i.e., more sensitivity) when\ndesigning probes for identification or when genomes\n\
    are blacklisted."
  type: string?
  inputBinding:
    prefix: --island-of-exact-match-tolerant
- id: in_custom_hybridization_fn_tolerant
  doc: "CUSTOM_HYBRIDIZATION_FN_TOLERANT\n(Optional) A more tolerant model than the\
    \ one\nimplemented in custom_hybridization_fn. This should\ncapture more possible\
    \ hybridizations (i.e., be more\nsensitive) when designing probes for identification\
    \ or\nwhen genomes are blacklisted. See --custom-\nhybridization-fn for details\
    \ of how this function\nshould be implemented and provided."
  type: string?
  inputBinding:
    prefix: --custom-hybridization-fn-tolerant
- id: in_print_analysis
  doc: Print analysis of the probe set's coverage
  type: boolean?
  inputBinding:
    prefix: --print-analysis
- id: in_write_analysis_to_tsv
  doc: "(Optional) The file to which to write a TSV-formatted\nmatrix of the probe\
    \ set's coverage analysis"
  type: File?
  inputBinding:
    prefix: --write-analysis-to-tsv
- id: in_write_sliding_window_coverage
  doc: "(Optional) The file to which to write the average\ncoverage achieved by the\
    \ probe set within sliding\nwindows of each target genome"
  type: File?
  inputBinding:
    prefix: --write-sliding-window-coverage
- id: in_write_probe_map_counts_to_tsv
  doc: "(Optional) The file to which to write a TSV-formatted\nlist of the number\
    \ of sequences each probe maps to.\nThis explicitly does not count reverse complements."
  type: long?
  inputBinding:
    prefix: --write-probe-map-counts-to-tsv
- id: in_filter_from_fast_a
  doc: "(Optional) A FASTA file from which to select candidate\nprobes. Before running\
    \ any other filters, keep only\nthe candidate probes that are equal to sequences\
    \ in\nthe file and remove all probes not equal to any of\nthese sequences. This,\
    \ by default, ignores sequences\nin the file whose header contains the string\
    \ 'reverse\ncomplement'; that is, if there is some probe with\nsequence S, it\
    \ may be filtered out (even if there is a\nsequence S in the file) if the header\
    \ of S in the file\ncontains 'reverse complement'. This is useful if we\nalready\
    \ have probes decided by the set cover filter,\nbut simply want to process them\
    \ further by, e.g.,\nadding adapters or running a coverage analysis. For\nexample,\
    \ if we have already run the time-consuming set\ncover filter and have a FASTA\
    \ containing those probes,\nwe can provide a path to that FASTA file for this\n\
    argument, and also provide the --skip-set-cover\nargument, in order to add adapters\
    \ to those probes\nwithout having to re-run the set cover filter."
  type: File?
  inputBinding:
    prefix: --filter-from-fasta
- id: in_skip_set_cover
  doc: "Skip the set cover filter; this is useful when we wish\nto see the probes\
    \ generated from only the duplicate\nand reverse complement filters, to gauge\
    \ the effects\nof the set cover filter"
  type: boolean?
  inputBinding:
    prefix: --skip-set-cover
- id: in_add_adapters
  doc: "Add adapters to the ends of probes; to specify adapter\nsequences, use --adapter-a\
    \ and --adapter-b"
  type: boolean?
  inputBinding:
    prefix: --add-adapters
- id: in_adapter_a
  doc: "ADAPTER_A\n(Optional) Args: <X> <Y>; Custom A adapter to use; two\nordered\
    \ where X is the A adapter sequence to place on\nthe 5' end of a probe and Y is\
    \ the A adapter sequence\nto place on the 3' end of a probe"
  type: long?
  inputBinding:
    prefix: --adapter-a
- id: in_adapter_b
  doc: "ADAPTER_B\n(Optional) Args: <X> <Y>; Custom B adapter to use; two\nordered\
    \ where X is the B adapter sequence to place on\nthe 5' end of a probe and Y is\
    \ the B adapter sequence\nto place on the 3' end of a probe"
  type: long?
  inputBinding:
    prefix: --adapter-b
- id: in_filter_polya
  doc: "FILTER_POLYA\n(Optional) Args: <X> <Y> (integers); do not output any\nprobe\
    \ that contains a stretch of X or more 'A' bases,\ntolerating up to Y mismatches\
    \ (and likewise for 'T'\nbases)"
  type: string?
  inputBinding:
    prefix: --filter-polya
- id: in_add_reverse_complements
  doc: Add to the output the reverse complement of each probe
  type: boolean?
  inputBinding:
    prefix: --add-reverse-complements
- id: in_expand_n
  doc: "[EXPAND_N]\nExpand each probe so that 'N' bases are replaced by\nreal bases;\
    \ for example, the probe 'ANA' would be\nreplaced with the probes 'AAA', 'ATA',\
    \ 'ACA', and\n'AGA'; this is done combinatorially across all 'N'\nbases in a probe,\
    \ and thus the number of new probes\ngrows exponentially with the number of 'N'\
    \ bases in a\nprobe. If followed by a command- line argument (INT),\nthis only\
    \ expands at most INT randomly selected N\nbases, and the rest are replaced with\
    \ random\nunambiguous bases (default INT is 3)."
  type: boolean?
  inputBinding:
    prefix: --expand-n
- id: in_limit_target_genomes
  doc: "(Optional) Use only the first LIMIT_TARGET_GENOMES\ntarget genomes in the\
    \ dataset"
  type: string?
  inputBinding:
    prefix: --limit-target-genomes
- id: in_limit_target_genomes_randomly_with_replacement
  doc: "(Optional) Randomly select\nLIMIT_TARGET_GENOMES_RANDOMLY_WITH_REPLACMENT\
    \ target\ngenomes in the dataset with replacement"
  type: string?
  inputBinding:
    prefix: --limit-target-genomes-randomly-with-replacement
- id: in_cluster_and_design_separately
  doc: "(Optional) If set, cluster all input sequences using\ntheir MinHash signatures,\
    \ design probes separately on\neach cluster, and combine the resulting probes.\
    \ This\ncan significantly lower runtime and memory usage, but\nmay lead to a suboptimal\
    \ solution. The value\nCLUSTER_AND_DESIGN_SEPARATELY gives the inter-cluster\n\
    distance threshold to merge clusters (1-ANI, where ANI\nis average nucleotide\
    \ identity); higher values result\nin fewer clusters, and thus longer runtime.\
    \ Values\nmust be in (0,0.5], and generally should be around 0.1\nor 0.2. When\
    \ used, this creates a separate genome for\neach input sequence -- it collapses\
    \ all sequences,\nacross both groups and genomes, into one list of\nsequences\
    \ in one group. Therefore, genomes will not be\ngrouped as specified in the input\
    \ and sequences will\nnot be grouped by genome, and differential\nidentification\
    \ is not supported"
  type: double?
  inputBinding:
    prefix: --cluster-and-design-separately
- id: in_cluster_from_fragments
  doc: "(Optional) If set, break all sequences into sequences\nof length CLUSTER_FROM_FRAGMENTS\
    \ nt, and cluster these\nfragments. This can be useful for improving runtime on\n\
    input with especially large genomes, in which probes\nfor different fragments\
    \ can be designed separately.\nValues should generally be around 10,000. For this\
    \ to\nbe used, --cluster-and-design-separately must also be\nset."
  type: long?
  inputBinding:
    prefix: --cluster-from-fragments
- id: in_filter_with_lsh_hamming
  doc: "(Optional) If set, filter candidate probes for near-\nduplicates using LSH\
    \ with a family of hash functions\nthat works with Hamming distance.\nFILTER_WITH_LSH_HAMMING\
    \ gives the maximum Hamming\ndistance at which to call near-duplicates; it should\n\
    be commensurate with (but not greater than)\nMISMATCHES. Using this may significantly\
    \ improve\nruntime and reduce memory usage by reducing the number\nof candidate\
    \ probes to consider, but may lead to a\nslightly sub-optimal solution. It may\
    \ also,\nparticularly with relatively high values of\nFILTER_WITH_LSH_HAMMING,\
    \ cause coverage obtained for\neach genome to be slightly less than the desired\n\
    coverage (COVERAGE) when that desired coverage is the\ncomplete genome; it is\
    \ recommended to also use\n--print-analysis or --write-analysis-to-tsv with this\n\
    to see the coverage that is obtained."
  type: long?
  inputBinding:
    prefix: --filter-with-lsh-hamming
- id: in_filter_with_lsh_min_hash
  doc: "(Optional) If set, filter candidate probes for near-\nduplicates using LSH\
    \ with a MinHash family.\nFILTER_WITH_LSH_MINHASH gives the maximum Jaccard\n\
    distance (1 minus Jaccard similarity) at which to call\nnear-duplicates; the Jaccard\
    \ similarity is calculated\nby treating each probe as a set of overlapping\n10-mers.\
    \ Its value should be commensurate with\nparameter values determining whether\
    \ a probe\nhybridizes to a target sequence, but this can be\ndifficult to measure\
    \ compared to the input for\n--filter-with-lsh-hamming. However, this allows more\n\
    sensitivity in near-duplicate detection than --filter-\nwith-lsh-hamming (e.g.,\
    \ if near-duplicates should\ninvolve probes shifted relative to each other). The\n\
    same caveats mentioned in help for --filter-with-lsh-\nhamming also apply here.\
    \ Values of\nFILTER_WITH_LSH_MINHASH above ~0.7 may start to\nrequire significant\
    \ memory and runtime for near-\nduplicate detection."
  type: long?
  inputBinding:
    prefix: --filter-with-lsh-minhash
- id: in_cover_groupings_separately
  doc: "Run a separate instance of set cover with the target\ngenomes from each grouping\
    \ and pool (union) the\nresulting probes. When set, the software will run\nfaster\
    \ than when not set, but it may yield more probes\nthan when it is not set."
  type: boolean?
  inputBinding:
    prefix: --cover-groupings-separately
- id: in_small_seq_skip
  doc: "(Optional) Do not create candidate probes from\nsequences whose length is\
    \ <= SMALL_SEQ_SKIP. If set to\n(PROBE_LENGTH - 1), this avoids the error raised\
    \ when\nsequences are less than the probe length"
  type: long?
  inputBinding:
    prefix: --small-seq-skip
- id: in_small_seq_min
  doc: "(Optional) If set, allow sequences as input that are\nshorter than PROBE_LENGTH\
    \ (when not set, the program\nwill error on such input). SMALL_SEQ_MIN is the\n\
    minimum sequence length that should be accepted as\ninput. When a sequence is\
    \ less than PROBE_LENGTH, a\ncandidate probe is created that is equal to the\n\
    sequence; thus, the output probes may have different\nlengths. Note that, when\
    \ this is set, it might be a\ngood idea to also set LCF_THRES to be a value smaller\n\
    than PROBE_LENGTH -- e.g., the length of the shortest\ninput sequence; otherwise,\
    \ when a probe of length p_l\nis mapped to a sequence of length s_l, then lcf_thres\n\
    is treated as being min(LCF_THRES, p_l, s_l) so that a\nprobe is able to 'cover'\
    \ a sequence shorter than the\nprobe and so that a probe shorter than lcf_thres\
    \ is\nable to 'cover' a sequence"
  type: long?
  inputBinding:
    prefix: --small-seq-min
- id: in_max_num_processes
  doc: "(Optional) An int >= 1 that gives the maximum number\nof processes to use\
    \ in multiprocessing pools; uses\nmin(number of CPUs in the system, MAX_NUM_PROCESSES)\n\
    processes"
  type: long?
  inputBinding:
    prefix: --max-num-processes
- id: in_km_er_probe_map_k
  doc: "(Optional) Use this value (KMER_PROBE_LENGTH_K) as the\nk-mer length when\
    \ constructing a map of k-mers to the\nprobes that contain these k-mers. This\
    \ map is used\nwhen mapping candidate probes to target sequences and\nthe k-mers\
    \ serve as seeds for calculating whether a\ncandidate probe 'covers' a subsequence.\
    \ The value\nshould be sufficiently less than PROBE_LENGTH so that\nit can find\
    \ mappings even when the candidate probe and\ntarget sequence are divergent. In\
    \ particular, CATCH\nwill try to find a value k >= KMER_PROBE_LENGTH_K (by\ndefault,\
    \ >=20) such that k divides PROBE_LENGTH and k\n< PROBE_LENGTH / MISMATCHES (if\
    \ MISMATCHES=0, then\nk=PROBE_LENGTH). It will then use this k as the k-mer\n\
    length in mappings; if no such k exists, it will use a\nrandomized approach with\
    \ KMER_PROBE_LENGTH_K as the\nk-mer length. If --custom-hybridization-fn is set,\
    \ it\nwill always use the randomized approach with\nKMER_PROBE_LENGTH_K (by default,\
    \ 20) as the k-mer\nlength."
  type: long?
  inputBinding:
    prefix: --kmer-probe-map-k
- id: in_use_native_dict_when_finding_tolerant_coverage
  doc: "When finding probe coverage for blacklisting and\nidentification (i.e., when\
    \ using tolerant parameters),\nuse a native Python dict as the kmer_probe_map\
    \ across\nprocesses, rather than the primitives in\nSharedKmerProbeMap that are\
    \ more suited to sharing\nacross processes. Depending on the input (particularly\n\
    if there are many candidate probes) this may result in\nsubstantial memory usage;\
    \ but it may provide an\nimprovement in runtime when there are relatively few\n\
    candidate probes and a very large blacklisted input"
  type: boolean?
  inputBinding:
    prefix: --use-native-dict-when-finding-tolerant-coverage
- id: in_ncbi_api_key
  doc: "API key to use for NCBI e-utils. Using this increases\nthe limit on requests/second\
    \ and may prevent an IP\naddress from being block due to too many requests"
  type: string?
  inputBinding:
    prefix: --ncbi-api-key
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_dataset
  doc: "One or more target datasets (e.g., one per species).\nEach dataset can be\
    \ specified in one of multiple ways.\n(a) If dataset is in the format 'download:TAXID',\
    \ then\nCATCH downloads from NCBI all whole genomes for the\nNCBI taxonomy with\
    \ id TAXID, and uses these sequences\nas input. (b) If dataset is a path to a\
    \ FASTA file,\nthen its sequences are read and used as input. (c)\nOtherwise,\
    \ it is assumed that this is a label for a\ndataset included in this package (e.g.,\
    \ 'zika'). If\nthe label starts with 'collection:' (e.g.,\n'collection:viruses_with_human_host'),\
    \ then this reads\nfrom an available collection of datasets. For\nsegmented viruses,\
    \ the format for NCBI downloads can\nalso be 'download:TAXID-SEGMENT'."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filter_from_fast_a
  doc: "(Optional) A FASTA file from which to select candidate\nprobes. Before running\
    \ any other filters, keep only\nthe candidate probes that are equal to sequences\
    \ in\nthe file and remove all probes not equal to any of\nthese sequences. This,\
    \ by default, ignores sequences\nin the file whose header contains the string\
    \ 'reverse\ncomplement'; that is, if there is some probe with\nsequence S, it\
    \ may be filtered out (even if there is a\nsequence S in the file) if the header\
    \ of S in the file\ncontains 'reverse complement'. This is useful if we\nalready\
    \ have probes decided by the set cover filter,\nbut simply want to process them\
    \ further by, e.g.,\nadding adapters or running a coverage analysis. For\nexample,\
    \ if we have already run the time-consuming set\ncover filter and have a FASTA\
    \ containing those probes,\nwe can provide a path to that FASTA file for this\n\
    argument, and also provide the --skip-set-cover\nargument, in order to add adapters\
    \ to those probes\nwithout having to re-run the set cover filter."
  type: File?
  outputBinding:
    glob: $(inputs.in_filter_from_fast_a)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/catch:1.4.0--py_0
cwlVersion: v1.1
baseCommand:
- design.py
