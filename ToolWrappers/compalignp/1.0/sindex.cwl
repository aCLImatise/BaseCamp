class: CommandLineTool
id: sindex.cwl
inputs:
- id: in_output_ssi_index
  doc: ': output the SSI index to file named <f>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_force_index_mode
  doc: ': force index mode to 64-bit, even on small files'
  type: boolean?
  inputBinding:
    prefix: --64
- id: in_external
  doc: ': force index compilation to use external (on-disk) sorting'
  type: boolean?
  inputBinding:
    prefix: --external
- id: in_in_format
  doc: ': specify input sequence file format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_pfam_seq
  doc: ': index a FASTA file with >(name) (accession) (desc)'
  type: boolean?
  inputBinding:
    prefix: --pfamseq
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_available
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_ssi_index
  doc: ': output the SSI index to file named <f>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_ssi_index)
hints: []
cwlVersion: v1.1
baseCommand:
- sindex
