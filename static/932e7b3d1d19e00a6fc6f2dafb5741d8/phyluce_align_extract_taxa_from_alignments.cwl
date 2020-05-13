class: CommandLineTool
id: phyluce_align_extract_taxa_from_alignments.cwl
inputs:
- id: alignments
  doc: The input directory containing nexus files
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The directory in which to store the output files
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input format of the alignments
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The input alignment format
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
- id: skip_check
  doc: Skip the initial taxon determination
  type: boolean
  inputBinding:
    prefix: --skip-check
- id: exclude
  doc: Taxa to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: include
  doc: Taxa to include
  type: string[]
  inputBinding:
    prefix: --include
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_extract_taxa_from_alignments
