class: CommandLineTool
id: ../../../seqtk_seq.cwl
inputs:
- id: mask_bases_lower
  doc: mask bases with quality lower than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: mask_bases_higher
  doc: mask bases with quality higher than INT [255]
  type: long
  inputBinding:
    prefix: -X
- id: masked_bases_converted
  doc: masked bases converted to CHAR; 0 for lowercase [0]
  type: string
  inputBinding:
    prefix: -n
- id: number_residues_line
  doc: number of residues per line; 0 for 2^32-1 [0]
  type: long
  inputBinding:
    prefix: -l
- id: quality_shift_gives
  doc: 'quality shift: ASCII-INT gives base quality [33]'
  type: long
  inputBinding:
    prefix: -Q
- id: random_seed_effective
  doc: random seed (effective with -f) [11]
  type: long
  inputBinding:
    prefix: -s
- id: sample_float_fraction
  doc: sample FLOAT fraction of sequences [1]
  type: double
  inputBinding:
    prefix: -f
- id: mask_regions_bed
  doc: mask regions in BED or name list FILE [null]
  type: File
  inputBinding:
    prefix: -M
- id: drop_sequences_shorter
  doc: drop sequences with length shorter than INT [0]
  type: long
  inputBinding:
    prefix: -L
- id: mask_complement_region
  doc: mask complement region (effective with -M)
  type: boolean
  inputBinding:
    prefix: -c
- id: reverse_complement
  doc: reverse complement
  type: boolean
  inputBinding:
    prefix: -r
- id: force_fasta_quality
  doc: force FASTA output (discard quality)
  type: boolean
  inputBinding:
    prefix: -A
- id: drop_comments_header
  doc: drop comments at the header lines
  type: boolean
  inputBinding:
    prefix: -C
- id: drop_sequences_containing
  doc: drop sequences containing ambiguous bases
  type: boolean
  inputBinding:
    prefix: -N
- id: output_n_
  doc: output the 2n-1 reads only
  type: boolean
  inputBinding:
    prefix: '-1'
- id: output_n_reads
  doc: output the 2n reads only
  type: boolean
  inputBinding:
    prefix: '-2'
- id: shift_quality_by
  doc: shift quality by '(-Q) - 33'
  type: boolean
  inputBinding:
    prefix: -V
- id: convert_bases_uppercases
  doc: convert all bases to uppercases
  type: boolean
  inputBinding:
    prefix: -U
- id: strip_white_spaces
  doc: strip of white spaces in sequences
  type: boolean
  inputBinding:
    prefix: -S
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- seq
