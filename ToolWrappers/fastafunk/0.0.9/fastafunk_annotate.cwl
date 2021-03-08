class: CommandLineTool
id: fastafunk_annotate.cwl
inputs:
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
- id: in_index_field
  doc: "[<field> ...]\nField(s) in the fasta header to match the metadata\n(else matches\
    \ column names)"
  type: string?
  inputBinding:
    prefix: --index-field
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
  doc: A metadata file
  type: File?
  inputBinding:
    prefix: --out-metadata
- id: in_header_delimiter
  doc: Header delimiter
  type: string?
  inputBinding:
    prefix: --header-delimiter
- id: in_add_cov_id
  doc: Parses header for COG or GISAID unique id and stores
  type: boolean?
  inputBinding:
    prefix: --add-cov-id
- id: in_low_memory
  doc: "Assumes no duplicate sequences within a FASTA so can\nuse SeqIO index\n"
  type: boolean?
  inputBinding:
    prefix: --low-memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
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
- annotate
