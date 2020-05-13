class: CommandLineTool
id: phyluce_align_get_ry_recoded_alignments.cwl
inputs:
- id: alignments
  doc: The input directory containing nexus files to filter
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The output directory to hold the converted nexus files
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The output alignment format.
  type: string
  inputBinding:
    prefix: --output-format
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: cores
  doc: Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs.
  type: string
  inputBinding:
    prefix: --cores
- id: binary
  doc: Output alignments in binary encoding (A or G) = 1 and (C or T) = 0
  type: boolean
  inputBinding:
    prefix: --binary
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_ry_recoded_alignments
