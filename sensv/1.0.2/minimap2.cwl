class: CommandLineTool
id: ../../../minimap2.cwl
inputs:
- id: use_homopolymercompressed_kmer
  doc: use homopolymer-compressed k-mer (preferrable for PacBio)
  type: boolean
  inputBinding:
    prefix: -H
- id: kmer_size_larger
  doc: k-mer size (no larger than 28) [15]
  type: long
  inputBinding:
    prefix: -k
- id: minimizer_window_size
  doc: minimizer window size [10]
  type: long
  inputBinding:
    prefix: -w
- id: split_index_num
  doc: split index for every ~NUM input bases [4G]
  type: string
  inputBinding:
    prefix: -I
- id: dump_index_file
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: filter_top_fraction
  doc: filter out top FLOAT fraction of repetitive minimizers [0.0002]
  type: double
  inputBinding:
    prefix: -f
- id: stop_chain_enlongation
  doc: stop chain enlongation if there are no minimizers in INT-bp [5000]
  type: string
  inputBinding:
    prefix: -g
- id: max_intron_length
  doc: max intron length (effective with -xsplice; changing -r) [200k]
  type: string
  inputBinding:
    prefix: -G
- id: max_fragment_length
  doc: max fragment length (effective with -xsr or in the fragment mode) [800]
  type: string
  inputBinding:
    prefix: -F
- id: bandwidth_used_alignment
  doc: bandwidth used in chaining and DP-based alignment [500]
  type: string
  inputBinding:
    prefix: -r
- id: minimal_number_minimizers
  doc: minimal number of minimizers on a chain [3]
  type: long
  inputBinding:
    prefix: -n
- id: minimal_chaining_score
  doc: minimal chaining score (matching bases minus log gap penalty) [40]
  type: long
  inputBinding:
    prefix: -m
- id: skip_self_mappings
  doc: skip self and dual mappings (for the all-vs-all mode)
  type: boolean
  inputBinding:
    prefix: -X
- id: min_secondarytoprimary_score
  doc: min secondary-to-primary score ratio [0.8]
  type: double
  inputBinding:
    prefix: -p
- id: retain_most_alignments
  doc: retain at most INT secondary alignments [5]
  type: long
  inputBinding:
    prefix: -N
- id: matching_score
  doc: matching score [2]
  type: long
  inputBinding:
    prefix: -A
- id: mismatch_penalty
  doc: mismatch penalty [4]
  type: long
  inputBinding:
    prefix: -B
- id: gap_open_penalty
  doc: gap open penalty [4,24]
  type:
  - long
  inputBinding:
    prefix: -O
- id: gap_extension_penalty
  doc: gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [2,1]
  type:
  - long
  inputBinding:
    prefix: -E
- id: zdrop_score_inversion
  doc: Z-drop score and inversion Z-drop score [400,200]
  type:
  - long
  inputBinding:
    prefix: -z
- id: minimal_peak_dp
  doc: minimal peak DP alignment score [80]
  type: long
  inputBinding:
    prefix: -s
- id: how_find_gtag
  doc: how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG
    [n]
  type: string
  inputBinding:
    prefix: -u
- id: output_sam_paf
  doc: output in the SAM format (PAF by default)
  type: boolean
  inputBinding:
    prefix: -a
- id: output_alignments_file
  doc: output alignments to FILE [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: write_cigar_ops
  doc: write CIGAR with >65535 ops at the CG tag
  type: boolean
  inputBinding:
    prefix: -L
- id: sam_read_line
  doc: SAM read group line in a format like '@RG\tID:foo\tSM:bar' []
  type: string
  inputBinding:
    prefix: -R
- id: output_cigar_paf
  doc: output CIGAR in PAF
  type: boolean
  inputBinding:
    prefix: -c
- id: cs
  doc: "[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]"
  type: boolean
  inputBinding:
    prefix: --cs
- id: md
  doc: output the MD tag
  type: boolean
  inputBinding:
    prefix: --MD
- id: eq_x
  doc: write =/X CIGAR operators
  type: boolean
  inputBinding:
    prefix: --eqx
- id: use_soft_clipping
  doc: use soft clipping for supplementary alignments
  type: boolean
  inputBinding:
    prefix: -Y
- id: number_of_threads
  doc: number of threads [3]
  type: long
  inputBinding:
    prefix: -t
- id: minibatch_size_mapping
  doc: minibatch size for mapping [500M]
  type: string
  inputBinding:
    prefix: -K
- id: preset_always_applied
  doc: 'preset (always applied before other options; see minimap2.1 for details) []
    - map-pb/map-ont: PacBio/Nanopore vs reference mapping - ava-pb/ava-ont: PacBio/Nanopore
    read overlap - asm5/asm10/asm20: asm-to-ref mapping, for ~0.1/1/5% sequence divergence
    - splice: long-read spliced alignment - sr: genomic short-read mapping'
  type: string
  inputBinding:
    prefix: -x
- id: target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap2
