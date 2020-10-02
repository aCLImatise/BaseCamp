class: CommandLineTool
id: phyluce_ncbi_prep_uce_align_files_for_ncbi.cwl
inputs:
- id: in_output
  doc: "[--input-format {fasta,nexus,phylip,phylip-relaxed,clustal,emboss,stockholm}]\n\
    [--verbosity {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]"
  type: File
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: The directory containing alignments
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
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
cwlVersion: v1.1
baseCommand:
- phyluce_ncbi_prep_uce_align_files_for_ncbi
