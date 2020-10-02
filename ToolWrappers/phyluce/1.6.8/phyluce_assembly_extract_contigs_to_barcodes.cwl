class: CommandLineTool
id: phyluce_assembly_extract_contigs_to_barcodes.cwl
inputs:
- id: in_config
  doc: "OUTPUT\n[--verbosity {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]"
  type: File
  inputBinding:
    prefix: --config
- id: in_contigs
  doc: The directory containing the assembled contigs.
  type: Directory
  inputBinding:
    prefix: --contigs
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
- id: out_config
  doc: "OUTPUT\n[--verbosity {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]"
  type: File
  outputBinding:
    glob: $(inputs.in_config)
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_extract_contigs_to_barcodes
