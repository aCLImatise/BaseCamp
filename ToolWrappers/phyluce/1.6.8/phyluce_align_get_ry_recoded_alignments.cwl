class: CommandLineTool
id: phyluce_align_get_ry_recoded_alignments.cwl
inputs:
- id: in_alignments
  doc: The input directory containing nexus files to filter
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: The output directory to hold the converted nexus files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format.
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The output alignment format.
  type: string?
  inputBinding:
    prefix: --output-format
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
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs."
  type: long?
  inputBinding:
    prefix: --cores
- id: in_binary
  doc: "Output alignments in binary encoding (A or G) = 1 and\n(C or T) = 0\n"
  type: boolean?
  inputBinding:
    prefix: --binary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory to hold the converted nexus files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_ry_recoded_alignments
