class: CommandLineTool
id: phyluce_align_convert_degen_bases.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to be screened. (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: 'The directory in which to store the resulting alignments. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: 'The input alignment format (default: nexus)'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: 'The output alignment format (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_convert_degen_bases
