class: CommandLineTool
id: phyluce_align_convert_one_align_to_another.cwl
inputs:
- id: alignments
  doc: The directory containing the alignments to convert.
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: An output directory to hold the converted alignments.
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --output-format
- id: cores
  doc: The number of compute cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: shorten_names
  doc: Convert names to a 6 or 7 character representation
  type: boolean
  inputBinding:
    prefix: --shorten-names
- id: name_conf
  doc: A config-formatted file containing full-name:shortname mappings
  type: string
  inputBinding:
    prefix: --name-conf
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
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_convert_one_align_to_another
