class: CommandLineTool
id: imsindel.cwl
inputs:
- id: out_d
  doc: /path/to/outoput-dir
  type: boolean
  inputBinding:
    prefix: --outd
- id: in_del_size
  doc: indel-size
  type: long
  inputBinding:
    prefix: --indelsize
- id: re_ffa
  doc: /path/to/ref.fa
  type: boolean
  inputBinding:
    prefix: --reffa
- id: base_q
  doc: '[20]'
  type: boolean
  inputBinding:
    prefix: --baseq
- id: mapq
  doc: '[20]'
  type: boolean
  inputBinding:
    prefix: --mapq
- id: within
  doc: '[3]'
  type: boolean
  inputBinding:
    prefix: --within
- id: pair_within
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --pair-within
- id: alt_read_depth
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --alt-read-depth
- id: support_reads
  doc: '[3]'
  type: boolean
  inputBinding:
    prefix: --support-reads
- id: clip_length
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --clip-length
- id: support_clip_length
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --support-clip-length
- id: gl_search
  doc: '[glsearch36]'
  type: boolean
  inputBinding:
    prefix: --glsearch
- id: gl_search_mat
  doc: '[data/mydna.mat]'
  type: boolean
  inputBinding:
    prefix: --glsearch-mat
- id: maff_t
  doc: '[mafft]'
  type: boolean
  inputBinding:
    prefix: --mafft
- id: sam_tools
  doc: '[samtools]'
  type: boolean
  inputBinding:
    prefix: --samtools
- id: temp
  doc: '[/temp]'
  type: boolean
  inputBinding:
    prefix: --temp
- id: thread
  doc: '[1]'
  type: boolean
  inputBinding:
    prefix: --thread
- id: output_consensus_seq
  doc: /path/to/output-dir
  type: boolean
  inputBinding:
    prefix: --output-consensus-seq
- id: exclude_region
  doc: /path/to/exclude-list
  type: boolean
  inputBinding:
    prefix: --exclude-region
outputs: []
cwlVersion: v1.1
baseCommand:
- imsindel
