class: CommandLineTool
id: design.py.cwl
inputs:
- id: dataset
  doc: One or more target datasets (e.g., one per species). Each dataset can be specified
    in one of multiple ways. (a) If dataset is in the format 'download:TAXID', then
    CATCH downloads from NCBI all whole genomes for the NCBI taxonomy with id TAXID,
    and uses these sequences as input. (b) If dataset is a path to a FASTA file, then
    its sequences are read and used as input. (c) Otherwise, it is assumed that this
    is a label for a dataset included in this package (e.g., 'zika'). If the label
    starts with 'colleciton:' (e.g., 'collection:viruses_with_human_host'), then this
    reads from an available collection of datasets.
  type: string
  inputBinding:
    position: 0
- id: add_reverse_complements
  doc: Add to the output the reverse complement of each probe
  type: boolean
  inputBinding:
    prefix: --add-reverse-complements
- id: expand_n
  doc: "[EXPAND_N] Expand each probe so that 'N' bases are replaced by real bases;\
    \ for example, the probe 'ANA' would be replaced with the probes 'AAA', 'ATA',\
    \ 'ACA', and 'AGA'; this is done combinatorially across all 'N' bases in a probe,\
    \ and thus the number of new probes grows exponentially with the number of 'N'\
    \ bases in a probe. If followed by a command- line argument (INT), this only expands\
    \ at most INT randomly selected N bases, and the rest are replaced with random\
    \ unambiguous bases (default INT is 3)."
  type: boolean
  inputBinding:
    prefix: --expand-n
- id: limit_target_genomes
  doc: (Optional) Use only the first LIMIT_TARGET_GENOMES target genomes in the dataset
  type: string
  inputBinding:
    prefix: --limit-target-genomes
- id: limit_target_genomes_randomly_with_replacement
  doc: (Optional) Randomly select LIMIT_TARGET_GENOMES_RANDOMLY_WITH_REPLACMENT target
    genomes in the dataset with replacement
  type: string
  inputBinding:
    prefix: --limit-target-genomes-randomly-with-replacement
- id: cluster_and_design_separately
  doc: (Optional) If set, cluster all input sequences using their MinHash signatures,
    design probes separately on each cluster, and combine the resulting probes. This
    can significantly lower runtime and memory usage, but may lead to a suboptimal
    solution. The value CLUSTER_AND_DESIGN_SEPARATELY gives the inter-cluster distance
    threshold to merge clusters (1-ANI, where ANI is average nucleotide identity);
    higher values result in fewer clusters, and thus longer runtime. Values must be
    in (0,0.5], and generally should be around 0.1 or 0.2. When used, this creates
    a separate genome for each input sequence -- it collapses all sequences, across
    both groups and genomes, into one list of sequences in one group. Therefore, genomes
    will not be grouped as specified in the input and sequences will not be grouped
    by genome, and differential identification is not supported
  type: string
  inputBinding:
    prefix: --cluster-and-design-separately
- id: cluster_from_fragments
  doc: (Optional) If set, break all sequences into sequences of length CLUSTER_FROM_FRAGMENTS
    nt, and cluster these fragments. This can be useful for improving runtime on input
    with especially large genomes, in which probes for different fragments can be
    designed separately. Values should generally be around 10,000. For this to be
    used, --cluster-and-design-separately must also be set.
  type: string
  inputBinding:
    prefix: --cluster-from-fragments
- id: filter_with_lsh_hamming
  doc: (Optional) If set, filter candidate probes for near- duplicates using LSH with
    a family of hash functions that works with Hamming distance. FILTER_WITH_LSH_HAMMING
    gives the maximum Hamming distance at which to call near-duplicates; it should
    be commensurate with (but not greater than) MISMATCHES. Using this may significantly
    improve runtime and reduce memory usage by reducing the number of candidate probes
    to consider, but may lead to a slightly sub-optimal solution. It may also, particularly
    with relatively high values of FILTER_WITH_LSH_HAMMING, cause coverage obtained
    for each genome to be slightly less than the desired coverage (COVERAGE) when
    that desired coverage is the complete genome; it is recommended to also use --print-analysis
    or --write-analysis-to-tsv with this to see the coverage that is obtained.
  type: string
  inputBinding:
    prefix: --filter-with-lsh-hamming
- id: filter_with_lsh_min_hash
  doc: (Optional) If set, filter candidate probes for near- duplicates using LSH with
    a MinHash family. FILTER_WITH_LSH_MINHASH gives the maximum Jaccard distance (1
    minus Jaccard similarity) at which to call near-duplicates; the Jaccard similarity
    is calculated by treating each probe as a set of overlapping 10-mers. Its value
    should be commensurate with parameter values determining whether a probe hybridizes
    to a target sequence, but this can be difficult to measure compared to the input
    for --filter-with-lsh-hamming. However, this allows more sensitivity in near-duplicate
    detection than --filter- with-lsh-hamming (e.g., if near-duplicates should involve
    probes shifted relative to each other). The same caveats mentioned in help for
    --filter-with-lsh- hamming also apply here. Values of FILTER_WITH_LSH_MINHASH
    above ~0.7 may start to require significant memory and runtime for near- duplicate
    detection.
  type: string
  inputBinding:
    prefix: --filter-with-lsh-minhash
- id: cover_groupings_separately
  doc: Run a separate instance of set cover with the target genomes from each grouping
    and pool (union) the resulting probes. When set, the software will run faster
    than when not set, but it may yield more probes than when it is not set.
  type: boolean
  inputBinding:
    prefix: --cover-groupings-separately
- id: small_seq_skip
  doc: (Optional) Do not create candidate probes from sequences whose length is <=
    SMALL_SEQ_SKIP. If set to (PROBE_LENGTH - 1), this avoids the error raised when
    sequences are less than the probe length
  type: string
  inputBinding:
    prefix: --small-seq-skip
- id: small_seq_min
  doc: (Optional) If set, allow sequences as input that are shorter than PROBE_LENGTH
    (when not set, the program will error on such input). SMALL_SEQ_MIN is the minimum
    sequence length that should be accepted as input. When a sequence is less than
    PROBE_LENGTH, a candidate probe is created that is equal to the sequence; thus,
    the output probes may have different lengths. Note that, when this is set, it
    might be a good idea to also set LCF_THRES to be a value smaller than PROBE_LENGTH
    -- e.g., the length of the shortest input sequence; otherwise, when a probe of
    length p_l is mapped to a sequence of length s_l, then lcf_thres is treated as
    being min(LCF_THRES, p_l, s_l) so that a probe is able to 'cover' a sequence shorter
    than the probe and so that a probe shorter than lcf_thres is able to 'cover' a
    sequence
  type: string
  inputBinding:
    prefix: --small-seq-min
- id: max_num_processes
  doc: (Optional) An int >= 1 that gives the maximum number of processes to use in
    multiprocessing pools; uses min(number of CPUs in the system, MAX_NUM_PROCESSES)
    processes
  type: long
  inputBinding:
    prefix: --max-num-processes
- id: km_er_probe_map_k
  doc: (Optional) Use this value (KMER_PROBE_LENGTH_K) as the k-mer length when constructing
    a map of k-mers to the probes that contain these k-mers. This map is used when
    mapping candidate probes to target sequences and the k-mers serve as seeds for
    calculating whether a candidate probe 'covers' a subsequence. The value should
    be sufficiently less than PROBE_LENGTH so that it can find mappings even when
    the candidate probe and target sequence are divergent. In particular, CATCH will
    try to find a value k >= KMER_PROBE_LENGTH_K (by default, >=20) such that k divides
    PROBE_LENGTH and k < PROBE_LENGTH / MISMATCHES (if MISMATCHES=0, then k=PROBE_LENGTH).
    It will then use this k as the k-mer length in mappings; if no such k exists,
    it will use a randomized approach with KMER_PROBE_LENGTH_K as the k-mer length.
    If --custom-hybridization-fn is set, it will always use the randomized approach
    with KMER_PROBE_LENGTH_K (by default, 20) as the k-mer length.
  type: string
  inputBinding:
    prefix: --kmer-probe-map-k
- id: use_native_dict_when_finding_tolerant_coverage
  doc: When finding probe coverage for blacklisting and identification (i.e., when
    using tolerant parameters), use a native Python dict as the kmer_probe_map across
    processes, rather than the primitives in SharedKmerProbeMap that are more suited
    to sharing across processes. Depending on the input (particularly if there are
    many candidate probes) this may result in substantial memory usage; but it may
    provide an improvement in runtime when there are relatively few candidate probes
    and a very large blacklisted input
  type: boolean
  inputBinding:
    prefix: --use-native-dict-when-finding-tolerant-coverage
- id: debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- design.py
