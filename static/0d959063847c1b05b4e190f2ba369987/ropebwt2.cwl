class: CommandLineTool
id: ../../../ropebwt2.cwl
inputs:
- id: leaf_block_length
  doc: leaf block length [0]
  type: long
  inputBinding:
    prefix: -l
- id: max_number_children
  doc: max number children per internal node [64]
  type: long
  inputBinding:
    prefix: -n
- id: build_bwt_reverse
  doc: build BWT in the reverse lexicographical order (RLO)
  type: boolean
  inputBinding:
    prefix: -s
- id: build_bwt_rclo
  doc: 'build BWT in RCLO, overriding -s '
  type: boolean
  inputBinding:
    prefix: -r
- id: batch_size_multistring
  doc: batch size for multi-string indexing; 0 for single-string [10g]
  type: long
  inputBinding:
    prefix: -m
- id: always_use_thread
  doc: always use a single thread
  type: boolean
  inputBinding:
    prefix: -P
- id: switch_when_remain
  doc: switch to single thread when < INT strings remain in a batch [1000]
  type: long
  inputBinding:
    prefix: -M
- id: read_existing_index
  doc: read existing index in the FMR format from FILE, overriding -s/-r [null]
  type: File
  inputBinding:
    prefix: -i
- id: input_onesequenceperline_format
  doc: input in the one-sequence-per-line format
  type: boolean
  inputBinding:
    prefix: -L
- id: skip_forward_strand
  doc: skip forward strand
  type: boolean
  inputBinding:
    prefix: -F
- id: skip_reverse_strand
  doc: skip reverse strand
  type: boolean
  inputBinding:
    prefix: -R
- id: skip_sequences_containing
  doc: skip sequences containing ambiguous bases
  type: boolean
  inputBinding:
    prefix: -N
- id: cut_ambiguous_int
  doc: cut at ambiguous bases and discard segment with length <INT [0]
  type: long
  inputBinding:
    prefix: -x
- id: cut_one_base
  doc: cut one base if forward==reverse
  type: boolean
  inputBinding:
    prefix: -C
- id: hard_mask_bases
  doc: hard mask bases with QUAL<INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: write_output_file
  doc: write output to FILE [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: dump_index_binary
  doc: dump the index in the binary FMR format
  type: boolean
  inputBinding:
    prefix: -b
- id: dump_index_fmd
  doc: dump the index in fermi's FMD format
  type: boolean
  inputBinding:
    prefix: -d
- id: output_index_newick
  doc: output the index in the Newick format (for debugging)
  type: boolean
  inputBinding:
    prefix: -T
- id: rope_bwt_two_r_one_eight_seven
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fq_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ropebwt2
