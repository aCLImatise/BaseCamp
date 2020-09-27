class: CommandLineTool
id: phyluce_align_get_informative_sites.cwl
inputs:
- id: in_alignments
  doc: The directory containing the alignment files
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: The output filename
  type: File
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_cores
  doc: The number of cores to use.
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output filename
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_informative_sites
