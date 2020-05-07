class: CommandLineTool
id: pbmm2_align.cwl
inputs:
- id: iso_seq
  doc: ': -k 15 -w 5  -u -o 2 -O 32 -e 1 -E 0 -A 1 -B 2 -z 200 -Z 100 -r 200000 -L
    0.5 -g 2000 -C 5 -G 200000'
  type: string
  inputBinding:
    position: 0
- id: unrolled
  doc: ': -k 15 -w 15    -o 2 -O 32 -e 1 -E 0 -A 1 -B 2 -z 200 -Z 100 -r 2000   -L
    0.5 -g 10000'
  type: string
  inputBinding:
    position: 1
- id: chunk_size
  doc: INT    Process N records per chunk. [100]
  type: boolean
  inputBinding:
    prefix: --chunk-size
- id: sort
  doc: Generate sorted BAM file.
  type: boolean
  inputBinding:
    prefix: --sort
- id: sort_memory
  doc: STR    Memory per thread for sorting. [768M]
  type: boolean
  inputBinding:
    prefix: --sort-memory
- id: sort_threads
  doc: INT    Number of threads used for sorting; 0 means 25% of -j, maximum 8. [0]
  type: boolean
  inputBinding:
    prefix: --sort-threads
- id: preset
  doc: 'STR    Set alignment mode. See below for preset parameter details. Valid choices:
    (SUBREAD, CCS, HIFI, ISOSEQ, UNROLLED). [SUBREAD]'
  type: boolean
  inputBinding:
    prefix: --preset
- id: k
  doc: INT    k-mer size (no larger than 28). [-1]
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: INT    Minimizer window size. [-1]
  type: boolean
  inputBinding:
    prefix: -w
- id: no_km_er_compression
  doc: Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED
    presets).
  type: boolean
  inputBinding:
    prefix: --no-kmer-compression
- id: a
  doc: INT    Matching score. [-1]
  type: boolean
  inputBinding:
    prefix: -A
- id: b
  doc: INT    Mismatch penalty. [-1]
  type: boolean
  inputBinding:
    prefix: -B
- id: z
  doc: INT    Z-drop score. [-1]
  type: boolean
  inputBinding:
    prefix: -z
- id: z
  doc: INT    Z-drop inversion score. [-1]
  type: boolean
  inputBinding:
    prefix: -Z
- id: r
  doc: INT    Bandwidth used in chaining and DP-based alignment. [-1]
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: INT    Stop chain enlongation if there are no minimizers in N bp. [-1]
  type: boolean
  inputBinding:
    prefix: -g
- id: gap_open_1
  doc: INT    Gap open penalty 1. [-1]
  type: boolean
  inputBinding:
    prefix: --gap-open-1
- id: gap_open_2
  doc: INT    Gap open penalty 2. [-1]
  type: boolean
  inputBinding:
    prefix: --gap-open-2
- id: gap_extend_1
  doc: INT    Gap extension penalty 1. [-1]
  type: boolean
  inputBinding:
    prefix: --gap-extend-1
- id: gap_extend_2
  doc: INT    Gap extension penalty 2. [-1]
  type: boolean
  inputBinding:
    prefix: --gap-extend-2
- id: lj_min_ratio
  doc: FLOAT  Long join flank ratio. [-1]
  type: boolean
  inputBinding:
    prefix: --lj-min-ratio
- id: g
  doc: INT    Max intron length (changes -r). [-1]
  type: boolean
  inputBinding:
    prefix: -G
- id: c
  doc: INT    Cost for a non-canonical GT-AG splicing (effective in ISOSEQ preset).
    [-1]
  type: boolean
  inputBinding:
    prefix: -C
- id: no_splice_flank
  doc: Do not prefer splice flanks GT-AG (effective in ISOSEQ preset).
  type: boolean
  inputBinding:
    prefix: --no-splice-flank
- id: sample
  doc: 'STR    Sample name for all read groups. Defaults, in order of precedence:
    SM field in input read group, biosample name, well sample name, "UnnamedSample".'
  type: boolean
  inputBinding:
    prefix: --sample
- id: rg
  doc: STR    Read group header line such as '@RG\tID:xyz\tSM:abc'. Only for FASTA/Q
    inputs.
  type: boolean
  inputBinding:
    prefix: --rg
- id: min_concordance_perc
  doc: FLOAT  Minimum alignment concordance in percent. [70]
  type: boolean
  inputBinding:
    prefix: --min-concordance-perc
- id: min_id_perc
  doc: FLOAT  Minimum sequence identity in percent. [0]
  type: boolean
  inputBinding:
    prefix: --min-id-perc
- id: min_gap_comp_id_perc
  doc: FLOAT  Minimum gap compressed sequence identity in percent. [0]
  type: boolean
  inputBinding:
    prefix: --min-gap-comp-id-perc
- id: min_length
  doc: INT    Minimum mapped read length in basepairs. [50]
  type: boolean
  inputBinding:
    prefix: --min-length
- id: best_n
  doc: INT    Output at maximum N alignments for each read, 0 means no maximum. [0]
  type: boolean
  inputBinding:
    prefix: --best-n
- id: strip
  doc: Remove all kinetic and extra QV tags. Output cannot be polished.
  type: boolean
  inputBinding:
    prefix: --strip
- id: split_by_sample
  doc: One output BAM per sample.
  type: boolean
  inputBinding:
    prefix: --split-by-sample
- id: unmapped
  doc: Include unmapped records in output.
  type: boolean
  inputBinding:
    prefix: --unmapped
- id: bam_index
  doc: 'STR    Generate index for sorted BAM output. Valid choices: (NONE, BAI, CSI).
    [BAI]'
  type: boolean
  inputBinding:
    prefix: --bam-index
- id: median_filter
  doc: Pick one read per ZMW of median length.
  type: boolean
  inputBinding:
    prefix: --median-filter
- id: z_mw
  doc: Process ZMW Reads, subreadset.xml input required (activates UNROLLED preset).
  type: boolean
  inputBinding:
    prefix: --zmw
- id: hq_region
  doc: Process HQ region of each ZMW, subreadset.xml input required (activates UNROLLED
    preset).
  type: boolean
  inputBinding:
    prefix: --hqregion
- id: collapse_homopolymers
  doc: Collapse homopolymers in reads and reference.
  type: boolean
  inputBinding:
    prefix: --collapse-homopolymers
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- pbmm2
- align
