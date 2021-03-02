class: CommandLineTool
id: minimap2.cwl
inputs:
- id: in_use_kmer_preferrable
  doc: use homopolymer-compressed k-mer (preferrable for PacBio)
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_kmer_size_larger
  doc: k-mer size (no larger than 28) [15]
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimizer_window_size
  doc: minimizer window size [10]
  type: long?
  inputBinding:
    prefix: -w
- id: in_split_index_num
  doc: split index for every ~NUM input bases [4G]
  type: long?
  inputBinding:
    prefix: -I
- id: in_dump_index_file
  doc: dump index to FILE []
  type: File?
  inputBinding:
    prefix: -d
- id: in_filter_top_fraction
  doc: filter out top FLOAT fraction of repetitive minimizers [0.0002]
  type: double?
  inputBinding:
    prefix: -f
- id: in_stop_chain_enlongation
  doc: stop chain enlongation if there are no minimizers in INT-bp [5000]
  type: long?
  inputBinding:
    prefix: -g
- id: in_max_intron_length
  doc: max intron length (effective with -xsplice; changing -r) [200k]
  type: long?
  inputBinding:
    prefix: -G
- id: in_max_fragment_length
  doc: max fragment length (effective with -xsr or in the fragment mode) [800]
  type: long?
  inputBinding:
    prefix: -F
- id: in_bandwidth_used_dpbased
  doc: bandwidth used in chaining and DP-based alignment [500]
  type: long?
  inputBinding:
    prefix: -r
- id: in_minimal_number_minimizers
  doc: minimal number of minimizers on a chain [3]
  type: long?
  inputBinding:
    prefix: -n
- id: in_minimal_chaining_score
  doc: minimal chaining score (matching bases minus log gap penalty) [40]
  type: long?
  inputBinding:
    prefix: -m
- id: in_skip_self_mappings
  doc: skip self and dual mappings (for the all-vs-all mode)
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_min_secondarytoprimary_score
  doc: min secondary-to-primary score ratio [0.8]
  type: double?
  inputBinding:
    prefix: -p
- id: in_retain_most_int
  doc: retain at most INT secondary alignments [5]
  type: long?
  inputBinding:
    prefix: -N
- id: in_matching_score
  doc: matching score [2]
  type: long?
  inputBinding:
    prefix: -A
- id: in_mismatch_penalty
  doc: mismatch penalty [4]
  type: long?
  inputBinding:
    prefix: -B
- id: in_gap_open_penalty
  doc: gap open penalty [4,24]
  type: long?
  inputBinding:
    prefix: -O
- id: in_gap_extension_penalty
  doc: gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [2,1]
  type: long?
  inputBinding:
    prefix: -E
- id: in_zdrop_score_inversion
  doc: Z-drop score and inversion Z-drop score [400,200]
  type: long?
  inputBinding:
    prefix: -z
- id: in_minimal_peak_dp
  doc: minimal peak DP alignment score [80]
  type: long?
  inputBinding:
    prefix: -s
- id: in_how_find_strands
  doc: how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG
    [n]
  type: string?
  inputBinding:
    prefix: -u
- id: in_output_sam_format
  doc: output in the SAM format (PAF by default)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_alignments_file
  doc: output alignments to FILE [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_cigar_ops
  doc: write CIGAR with >65535 ops at the CG tag
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_sam_read_line
  doc: SAM read group line in a format like '@RG\tID:foo\tSM:bar' []
  type: string?
  inputBinding:
    prefix: -R
- id: in_output_cigar_paf
  doc: output CIGAR in PAF
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cs
  doc: "[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]"
  type: boolean?
  inputBinding:
    prefix: --cs
- id: in_md
  doc: output the MD tag
  type: boolean?
  inputBinding:
    prefix: --MD
- id: in_eq_x
  doc: write =/X CIGAR operators
  type: boolean?
  inputBinding:
    prefix: --eqx
- id: in_use_soft_clipping
  doc: use soft clipping for supplementary alignments
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_number_of_threads
  doc: number of threads [3]
  type: long?
  inputBinding:
    prefix: -t
- id: in_minibatch_size_mapping
  doc: minibatch size for mapping [500M]
  type: long?
  inputBinding:
    prefix: -K
- id: in_preset_always_applied
  doc: "preset (always applied before other options; see minimap2.1 for details) []\n\
    - map-pb/map-ont: PacBio/Nanopore vs reference mapping\n- ava-pb/ava-ont: PacBio/Nanopore\
    \ read overlap\n- asm5/asm10/asm20: asm-to-ref mapping, for ~0.1/1/5% sequence\
    \ divergence\n- splice: long-read spliced alignment\n- sr: genomic short-read\
    \ mapping"
  type: double?
  inputBinding:
    prefix: -x
- id: in_target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignments_file
  doc: output alignments to FILE [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignments_file)
hints: []
cwlVersion: v1.1
baseCommand:
- minimap2
