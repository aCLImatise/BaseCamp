class: CommandLineTool
id: analyze_probe_coverage.py.cwl
inputs:
- id: dataset
  doc: Labels for one or more target datasets (e.g., one label per species)
  type: string[]
  inputBinding:
    prefix: --dataset
- id: probes_fast_a
  doc: Path to a FASTA file that provides the probes (one per sequence) whose coverage
    should be analyzed against the genomes in the given datasets
  type: string
  inputBinding:
    prefix: --probes-fasta
- id: mismatches
  doc: Allow for this number of mismatches when determining whether a probe covers
    a sequence
  type: string
  inputBinding:
    prefix: --mismatches
- id: lcf_th_res
  doc: Say that a portion of a probe covers a portion of a sequence if the two share
    a substring with at most MISMATCHES mismatches that has length >= LCF_THRES bp
  type: string
  inputBinding:
    prefix: --lcf-thres
- id: island_of_exact_match
  doc: (Optional) When determining whether a probe covers a sequence, require that
    there be an exact match (i.e., no mismatches) of length at least ISLAND_OF_EXACT_MATCH
    bp between a portion of the probe and a portion of the sequence
  type: string
  inputBinding:
    prefix: --island-of-exact-match
- id: cover_extension
  doc: Extend the coverage of each side of a probe by this number of bp. That is,
    a probe covers a region that consists of the portion of a sequence it hybridizes
    to, as well as this number of bp on each side of that portion. This is useful
    in modeling hybrid selection, where a probe hybridizes toa fragment that includes
    the region targeted by the probe, along with surrounding portions of the sequence.
    Increasing its value should reduce the number of probes required to achieve the
    desired coverage.
  type: string
  inputBinding:
    prefix: --cover-extension
- id: limit_target_genomes
  doc: (Optional) Use only the first N target genomes in the dataset
  type: string
  inputBinding:
    prefix: --limit-target-genomes
- id: print_analysis
  doc: Print analysis of the probe set's coverage
  type: boolean
  inputBinding:
    prefix: --print-analysis
- id: write_analysis_to_tsv
  doc: The file to which to write a TSV-formatted matrix of the probe set's coverage
    analysis
  type: string
  inputBinding:
    prefix: --write-analysis-to-tsv
- id: write_sliding_window_coverage
  doc: The file to which to write the average coverage achieved by the probe set within
    sliding windows of each target genome
  type: string
  inputBinding:
    prefix: --write-sliding-window-coverage
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
    mapping the given probes to target sequences and the k-mers serve as seeds for
    calculating whether a probe 'covers' a subsequence. The value should be sufficiently
    less than the probe length (PROBE_LENGTH) so that it can find mappings even when
    the candidate probe and target sequence are divergent. In particular, CATCH will
    try to find a value k >= KMER_PROBE_LENGTH_K (by default, >=10) such that k divides
    PROBE_LENGTH and k < PROBE_LENGTH / MISMATCHES (if MISMATCHES=0, then k=PROBE_LENGTH).
    It will then use this k as the k-mer length in mappings; if no such k exists,
    it will use a randomized approach with KMER_PROBE_LENGTH_K as the k-mer length.
  type: string
  inputBinding:
    prefix: --kmer-probe-map-k
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
- analyze_probe_coverage.py
