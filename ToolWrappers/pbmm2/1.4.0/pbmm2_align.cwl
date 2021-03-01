class: CommandLineTool
id: pbmm2_align.cwl
inputs:
- id: in_chunk_size
  doc: INT    Process N records per chunk. [100]
  type: boolean?
  inputBinding:
    prefix: --chunk-size
- id: in_sort
  doc: Generate sorted BAM file.
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_sort_memory
  doc: STR    Memory per thread for sorting. [768M]
  type: boolean?
  inputBinding:
    prefix: --sort-memory
- id: in_sort_threads
  doc: INT    Number of threads used for sorting; 0 means 25% of -j, maximum 8. [0]
  type: boolean?
  inputBinding:
    prefix: --sort-threads
- id: in_preset
  doc: "STR    Set alignment mode. See below for preset parameter details. Valid choices:\n\
    (SUBREAD, CCS, HIFI, ISOSEQ, UNROLLED). [SUBREAD]"
  type: boolean?
  inputBinding:
    prefix: --preset
- id: in_int_kmer_size
  doc: INT    k-mer size (no larger than 28). [-1]
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_int_minimizer_window
  doc: INT    Minimizer window size. [-1]
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_no_km_er_compression
  doc: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD &\
    \ UNROLLED\npresets)."
  type: boolean?
  inputBinding:
    prefix: --no-kmer-compression
- id: in_int_matching_score
  doc: INT    Matching score. [-1]
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_int_mismatch_penalty
  doc: INT    Mismatch penalty. [-1]
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_int_zdrop_score
  doc: INT    Z-drop score. [-1]
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_int_zdrop_inversion
  doc: INT    Z-drop inversion score. [-1]
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_int_bandwidth_used
  doc: INT    Bandwidth used in chaining and DP-based alignment. [-1]
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_int_stop_enlongation
  doc: INT    Stop chain enlongation if there are no minimizers in N bp. [-1]
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_gap_open_one
  doc: INT    Gap open penalty 1. [-1]
  type: boolean?
  inputBinding:
    prefix: --gap-open-1
- id: in_gap_open_two
  doc: INT    Gap open penalty 2. [-1]
  type: boolean?
  inputBinding:
    prefix: --gap-open-2
- id: in_gap_extend_one
  doc: INT    Gap extension penalty 1. [-1]
  type: boolean?
  inputBinding:
    prefix: --gap-extend-1
- id: in_gap_extend_two
  doc: INT    Gap extension penalty 2. [-1]
  type: boolean?
  inputBinding:
    prefix: --gap-extend-2
- id: in_lj_min_ratio
  doc: FLOAT  Long join flank ratio. [-1]
  type: boolean?
  inputBinding:
    prefix: --lj-min-ratio
- id: in_int_max_intron
  doc: INT    Max intron length (changes -r). [-1]
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_int_cost_noncanonical
  doc: INT    Cost for a non-canonical GT-AG splicing (effective in ISOSEQ preset).
    [-1]
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_no_splice_flank
  doc: Do not prefer splice flanks GT-AG (effective in ISOSEQ preset).
  type: boolean?
  inputBinding:
    prefix: --no-splice-flank
- id: in_sample
  doc: "STR    Sample name for all read groups. Defaults, in order of precedence:\
    \ SM field in\ninput read group, biosample name, well sample name, \"UnnamedSample\"\
    ."
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_rg
  doc: STR    Read group header line such as '@RG\tID:xyz\tSM:abc'. Only for FASTA/Q
    inputs.
  type: boolean?
  inputBinding:
    prefix: --rg
- id: in_min_concordance_perc
  doc: FLOAT  Minimum alignment concordance in percent. [70]
  type: boolean?
  inputBinding:
    prefix: --min-concordance-perc
- id: in_min_id_perc
  doc: FLOAT  Minimum sequence identity in percent. [0]
  type: boolean?
  inputBinding:
    prefix: --min-id-perc
- id: in_min_gap_comp_id_perc
  doc: FLOAT  Minimum gap compressed sequence identity in percent. [0]
  type: boolean?
  inputBinding:
    prefix: --min-gap-comp-id-perc
- id: in_min_length
  doc: INT    Minimum mapped read length in basepairs. [50]
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_best_n
  doc: INT    Output at maximum N alignments for each read, 0 means no maximum. [0]
  type: boolean?
  inputBinding:
    prefix: --best-n
- id: in_strip
  doc: Remove all kinetic and extra QV tags. Output cannot be polished.
  type: boolean?
  inputBinding:
    prefix: --strip
- id: in_split_by_sample
  doc: One output BAM per sample.
  type: boolean?
  inputBinding:
    prefix: --split-by-sample
- id: in_unmapped
  doc: Include unmapped records in output.
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_bam_index
  doc: 'STR    Generate index for sorted BAM output. Valid choices: (NONE, BAI, CSI).
    [BAI]'
  type: boolean?
  inputBinding:
    prefix: --bam-index
- id: in_median_filter
  doc: Pick one read per ZMW of median length.
  type: boolean?
  inputBinding:
    prefix: --median-filter
- id: in_z_mw
  doc: Process ZMW Reads, subreadset.xml input required (activates UNROLLED preset).
  type: boolean?
  inputBinding:
    prefix: --zmw
- id: in_hq_region
  doc: "Process HQ region of each ZMW, subreadset.xml input required (activates UNROLLED\n\
    preset)."
  type: boolean?
  inputBinding:
    prefix: --hqregion
- id: in_collapse_homopolymers
  doc: Collapse homopolymers in reads and reference.
  type: boolean?
  inputBinding:
    prefix: --collapse-homopolymers
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_out_dot_aligned_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_f_a_vertical_line_xml_vertical_line_mmi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_gz_vertical_line_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_dataset
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbmm2:1.4.0--h56fc30b_0
cwlVersion: v1.1
baseCommand:
- pbmm2
- align
