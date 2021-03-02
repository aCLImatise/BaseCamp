class: CommandLineTool
id: phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db.cwl
inputs:
- id: in_alignments
  doc: The directory containing alignments
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_conf
  doc: The config file name
  type: File?
  inputBinding:
    prefix: --conf
- id: in_output
  doc: The directory in which to store output files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --input-format
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
  doc: The directory in which to store output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db
