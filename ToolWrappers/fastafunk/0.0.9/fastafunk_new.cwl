class: CommandLineTool
id: fastafunk_new.cwl
inputs:
- id: in_date_column
  doc: '[--out-fasta <filename>]'
  type: File?
  inputBinding:
    prefix: --date-column
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_in_fast_a
  doc: "[<filename> ...]\nOne or more FASTA files of sequences (else reads from\n\
    stdin)"
  type: File?
  inputBinding:
    prefix: --in-fasta
- id: in_in_metadata
  doc: "[<filename> ...]\nOne or more CSV or TSV tables of metadata"
  type: File?
  inputBinding:
    prefix: --in-metadata
- id: in_index_column
  doc: "Column in the metadata file to use to match to the\nsequence"
  type: File?
  inputBinding:
    prefix: --index-column
- id: in_out_fast_a
  doc: A FASTA file (else writes to stdout)
  type: File?
  inputBinding:
    prefix: --out-fasta
- id: in_out_metadata
  doc: "A metadata file\n"
  type: File?
  inputBinding:
    prefix: --out-metadata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_date_column
  doc: '[--out-fasta <filename>]'
  type: File?
  outputBinding:
    glob: $(inputs.in_date_column)
- id: out_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastafunk
- new
