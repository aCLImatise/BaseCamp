class: CommandLineTool
id: rmapbs_pe.cwl
inputs:
- id: in_output
  doc: output file name
  type: File?
  inputBinding:
    prefix: -output
- id: in_chrom
  doc: chromosomes in FASTA file or dir
  type: boolean?
  inputBinding:
    prefix: -chrom
- id: in_start
  doc: index of first read to map
  type: boolean?
  inputBinding:
    prefix: -start
- id: in_number
  doc: number of reads to map
  type: boolean?
  inputBinding:
    prefix: -number
- id: in_suffix
  doc: suffix of chrom files (assumes dir provided)
  type: boolean?
  inputBinding:
    prefix: -suffix
- id: in_mismatch
  doc: maximum allowed mismatches
  type: boolean?
  inputBinding:
    prefix: -mismatch
- id: in_max_map
  doc: maximum allowed mappings for a read
  type: boolean?
  inputBinding:
    prefix: -max-map
- id: in_clip
  doc: clip the specified adaptor
  type: boolean?
  inputBinding:
    prefix: -clip
- id: in_fra_glen
  doc: max fragment length
  type: boolean?
  inputBinding:
    prefix: -fraglen
- id: in_suffix_len
  doc: Suffix length of reads name
  type: boolean?
  inputBinding:
    prefix: -suffix-len
- id: in_verbose
  doc: print more run info
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_fast_q_reads_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rmapbs-pe
