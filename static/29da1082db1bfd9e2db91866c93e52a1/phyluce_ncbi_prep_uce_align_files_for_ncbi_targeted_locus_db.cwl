class: CommandLineTool
id: phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db.cwl
inputs:
- id: alignments
  doc: The directory containing alignments
  type: string
  inputBinding:
    prefix: --alignments
- id: conf
  doc: The config file name
  type: string
  inputBinding:
    prefix: --conf
- id: output
  doc: The directory in which to store output files
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
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
- phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db
