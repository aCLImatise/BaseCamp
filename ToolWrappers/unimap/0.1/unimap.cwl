class: CommandLineTool
id: unimap.cwl
inputs:
- id: in_kmer_size_larger
  doc: k-mer size (no larger than 28) [21]
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimizer_window_size
  doc: minimizer window size [11]
  type: long?
  inputBinding:
    prefix: -w
- id: in_number_bits_bloom
  doc: number of bits for bloom filter [35]
  type: long?
  inputBinding:
    prefix: -b
- id: in_dump_index_file
  doc: dump index to FILE []
  type: File?
  inputBinding:
    prefix: -d
- id: in_high_kmer_occurrence
  doc: high k-mer occurrence threshold when indexing [50]
  type: long?
  inputBinding:
    prefix: -F
- id: in_max_minimizer_occurrence
  doc: max minimizer occurrence [1000]
  type: long?
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
- id: in_bandwidth_used_dpbased
  doc: bandwidth used in chaining and DP-based alignment [100000]
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
- id: in_min_secondarytoprimary_score
  doc: min secondary-to-primary score ratio [0.8]
  type: double?
  inputBinding:
    prefix: -p
- id: in_retain_most_int
  doc: retain at most INT secondary alignments [10,25]
  type: long?
  inputBinding:
    prefix: -N
- id: in_matching_score
  doc: matching score [1]
  type: long?
  inputBinding:
    prefix: -A
- id: in_mismatch_penalty
  doc: mismatch penalty [3]
  type: long?
  inputBinding:
    prefix: -B
- id: in_gap_open_penalty
  doc: gap open penalty [5,25]
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
  doc: minimal peak DP alignment score [200]
  type: long?
  inputBinding:
    prefix: -s
- id: in_how_find_strands
  doc: how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG
    [n]
  type: string?
  inputBinding:
    prefix: -u
- id: in_perform_basealignment_cigar
  doc: perform base-alignment and output CIGAR in the PAF format
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_perform_basealignment_output
  doc: perform base-alignment and output in SAM (PAF by default)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_alignments_file
  doc: output alignments to FILE [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_sam_read_line
  doc: SAM read group line in a format like '@RG\tID:foo\tSM:bar' []
  type: string?
  inputBinding:
    prefix: -R
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
  doc: minibatch size for mapping [1G]
  type: long?
  inputBinding:
    prefix: -K
- id: in_preset_always_applied
  doc: "preset (always applied before other options; see unimap.1 for details) []\n\
    - ont/clr:  --rmq=no -r10k -A2 -B4 -O4,24 -E2,1 -z400,200 -s80 -K500M\n- hifi/ccs:\
    \ --rmq=no -r10k -A1 -B4 -O6,26 -E2,1 -w21 -K500M\n- asm5:  -A1 -B19 -O39,81 -E2,1\
    \ -N50 -w21\n- asm10: -A1 -B9  -O16,41 -E2,1 -N50 -w21\n- asm20: -A1 -B4  -O6,26\
    \  -E2,1 -N50\n- splice:hq/splice: spliced alignment"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unimap:0.1--hed695b0_0
cwlVersion: v1.1
baseCommand:
- unimap
