class: CommandLineTool
id: seq_seq_pan_extract.cwl
inputs:
- id: in_quiet
  doc: Suppress warnings.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output_path
  doc: path to output directory
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File?
  inputBinding:
    prefix: --name
- id: in_x_mfa
  doc: XMFA input file
  type: File?
  inputBinding:
    prefix: --xmfa
- id: in_genome_desc
  doc: "File containing genome description (name/chromosomes)\nfor .MAF file creation\
    \ and 'split' task. Format:\n'genome id<TAB>name<TAB>length' Length information\
    \ is\nonly necessary for FASTA files containing more than\none chromosome. Multiple\
    \ chromosomes of a genome must\nbe listed in the same order as in original FASTA\
    \ file."
  type: long?
  inputBinding:
    prefix: --genome_desc
- id: in_extract_region
  doc: "Region to extract in the form genome_nr:start-end (one\nbased and inclusive)\
    \ or only genome_nr for full\nsequence.\n"
  type: string?
  inputBinding:
    prefix: --extractregion
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
hints: []
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- extract
