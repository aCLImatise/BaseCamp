class: CommandLineTool
id: ../../../imsindel.cwl
inputs:
- id: in_bam
  doc: /path/to/foo.bam
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_chr
  doc: ''
  type: string
  inputBinding:
    prefix: --chr
- id: in_out_d
  doc: /path/to/outoput-dir
  type: boolean
  inputBinding:
    prefix: --outd
- id: in_in_del_size
  doc: indel-size
  type: long
  inputBinding:
    prefix: --indelsize
- id: in_re_ffa
  doc: /path/to/ref.fa
  type: boolean
  inputBinding:
    prefix: --reffa
- id: in_base_q
  doc: '[20]'
  type: boolean
  inputBinding:
    prefix: --baseq
- id: in_mapq
  doc: '[20]'
  type: boolean
  inputBinding:
    prefix: --mapq
- id: in_within
  doc: '[3]'
  type: boolean
  inputBinding:
    prefix: --within
- id: in_pair_within
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --pair-within
- id: in_alt_read_depth
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --alt-read-depth
- id: in_support_reads
  doc: '[3]'
  type: boolean
  inputBinding:
    prefix: --support-reads
- id: in_clip_length
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --clip-length
- id: in_support_clip_length
  doc: '[5]'
  type: boolean
  inputBinding:
    prefix: --support-clip-length
- id: in_gl_search
  doc: '[glsearch36]'
  type: boolean
  inputBinding:
    prefix: --glsearch
- id: in_gl_search_mat
  doc: '[data/mydna.mat]'
  type: boolean
  inputBinding:
    prefix: --glsearch-mat
- id: in_maff_t
  doc: '[mafft]'
  type: boolean
  inputBinding:
    prefix: --mafft
- id: in_sam_tools
  doc: '[samtools]'
  type: boolean
  inputBinding:
    prefix: --samtools
- id: in_temp
  doc: '[/temp]'
  type: boolean
  inputBinding:
    prefix: --temp
- id: in_thread
  doc: '[1]'
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_output_consensus_seq
  doc: /path/to/output-dir
  type: File
  inputBinding:
    prefix: --output-consensus-seq
- id: in_exclude_region
  doc: /path/to/exclude-list
  type: boolean
  inputBinding:
    prefix: --exclude-region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_consensus_seq
  doc: /path/to/output-dir
  type: File
  outputBinding:
    glob: $(inputs.in_output_consensus_seq)
cwlVersion: v1.1
baseCommand:
- imsindel
