class: CommandLineTool
id: analyze_probe_coverage.py.cwl
inputs:
- id: in_m
  doc: "[--island-of-exact-match ISLAND_OF_EXACT_MATCH]\n[-e COVER_EXTENSION]\n[--limit-target-genomes\
    \ LIMIT_TARGET_GENOMES]\n[--print-analysis]\n[--write-analysis-to-tsv WRITE_ANALYSIS_TO_TSV]\n\
    [--write-sliding-window-coverage WRITE_SLIDING_WINDOW_COVERAGE]\n[--max-num-processes\
    \ MAX_NUM_PROCESSES]\n[--kmer-probe-map-k KMER_PROBE_MAP_K]\n[--debug] [--verbose]\
    \ [-V]"
  type: long
  inputBinding:
    prefix: -m
- id: in_dataset
  doc: "Labels for one or more target datasets (e.g., one\nlabel per species)"
  type: string[]
  inputBinding:
    prefix: --dataset
- id: in_probes_fast_a
  doc: "Path to a FASTA file that provides the probes (one per\nsequence) whose coverage\
    \ should be analyzed against\nthe genomes in the given datasets"
  type: File
  inputBinding:
    prefix: --probes-fasta
- id: in_mismatches
  doc: "Allow for this number of mismatches when determining\nwhether a probe covers\
    \ a sequence"
  type: long
  inputBinding:
    prefix: --mismatches
- id: in_lcf_th_res
  doc: "Say that a portion of a probe covers a portion of a\nsequence if the two share\
    \ a substring with at most\nMISMATCHES mismatches that has length >= LCF_THRES\
    \ bp"
  type: long
  inputBinding:
    prefix: --lcf-thres
- id: in_island_of_exact_match
  doc: "(Optional) When determining whether a probe covers a\nsequence, require that\
    \ there be an exact match (i.e.,\nno mismatches) of length at least\nISLAND_OF_EXACT_MATCH\
    \ bp between a portion of the\nprobe and a portion of the sequence"
  type: long
  inputBinding:
    prefix: --island-of-exact-match
- id: in_cover_extension
  doc: "Extend the coverage of each side of a probe by this\nnumber of bp. That is,\
    \ a probe covers a region that\nconsists of the portion of a sequence it hybridizes\n\
    to, as well as this number of bp on each side of that\nportion. This is useful\
    \ in modeling hybrid selection,\nwhere a probe hybridizes toa fragment that includes\n\
    the region targeted by the probe, along with\nsurrounding portions of the sequence.\
    \ Increasing its\nvalue should reduce the number of probes required to\nachieve\
    \ the desired coverage."
  type: long
  inputBinding:
    prefix: --cover-extension
- id: in_limit_target_genomes
  doc: "(Optional) Use only the first N target genomes in the\ndataset"
  type: string
  inputBinding:
    prefix: --limit-target-genomes
- id: in_print_analysis
  doc: Print analysis of the probe set's coverage
  type: boolean
  inputBinding:
    prefix: --print-analysis
- id: in_write_analysis_to_tsv
  doc: "The file to which to write a TSV-formatted matrix of\nthe probe set's coverage\
    \ analysis"
  type: File
  inputBinding:
    prefix: --write-analysis-to-tsv
- id: in_write_sliding_window_coverage
  doc: "The file to which to write the average coverage\nachieved by the probe set\
    \ within sliding windows of\neach target genome"
  type: File
  inputBinding:
    prefix: --write-sliding-window-coverage
- id: in_max_num_processes
  doc: "(Optional) An int >= 1 that gives the maximum number\nof processes to use\
    \ in multiprocessing pools; uses\nmin(number of CPUs in the system, MAX_NUM_PROCESSES)\n\
    processes"
  type: long
  inputBinding:
    prefix: --max-num-processes
- id: in_km_er_probe_map_k
  doc: "(Optional) Use this value (KMER_PROBE_LENGTH_K) as the\nk-mer length when\
    \ constructing a map of k-mers to the\nprobes that contain these k-mers. This\
    \ map is used\nwhen mapping the given probes to target sequences and\nthe k-mers\
    \ serve as seeds for calculating whether a\nprobe 'covers' a subsequence. The\
    \ value should be\nsufficiently less than the probe length (PROBE_LENGTH)\nso\
    \ that it can find mappings even when the candidate\nprobe and target sequence\
    \ are divergent. In\nparticular, CATCH will try to find a value k >=\nKMER_PROBE_LENGTH_K\
    \ (by default, >=10) such that k\ndivides PROBE_LENGTH and k < PROBE_LENGTH /\
    \ MISMATCHES\n(if MISMATCHES=0, then k=PROBE_LENGTH). It will then\nuse this k\
    \ as the k-mer length in mappings; if no such\nk exists, it will use a randomized\
    \ approach with\nKMER_PROBE_LENGTH_K as the k-mer length."
  type: long
  inputBinding:
    prefix: --kmer-probe-map-k
- id: in_debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyze_probe_coverage.py
