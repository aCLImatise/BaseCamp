class: CommandLineTool
id: phyluce_align_convert_one_align_to_another.cwl
inputs:
- id: in_alignments
  doc: The directory containing the alignments to convert.
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: An output directory to hold the converted alignments.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_cores
  doc: The number of compute cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_shorten_names
  doc: Convert names to a 6 or 7 character representation
  type: boolean?
  inputBinding:
    prefix: --shorten-names
- id: in_name_conf
  doc: "A config-formatted file containing full-name:shortname\nmappings"
  type: File?
  inputBinding:
    prefix: --name-conf
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An output directory to hold the converted alignments.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_convert_one_align_to_another
