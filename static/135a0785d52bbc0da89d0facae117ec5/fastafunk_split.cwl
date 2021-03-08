class: CommandLineTool
id: fastafunk_split.cwl
inputs:
- id: in_in_metadata
  doc: '[--index-column <column>]'
  type: File?
  inputBinding:
    prefix: --in-metadata
- id: in_index_field
  doc: '[--lineage LINEAGE [LINEAGE ...]]'
  type: string?
  inputBinding:
    prefix: --index-field
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
  doc: One FASTA files of sequences (else reads from stdin)
  type: File?
  inputBinding:
    prefix: --in-fasta
- id: in_index_column
  doc: "Column(s) in the metadata file to use to match to the\nsequence"
  type: File?
  inputBinding:
    prefix: --index-column
- id: in_lineage
  doc: "Specific list of lineages to split by with others\ncollpasing to nearest lineage."
  type: string[]
  inputBinding:
    prefix: --lineage
- id: in_lineage_csv
  doc: "CSV with lineage and outgroup columns defining the\nlineages to split by."
  type: string?
  inputBinding:
    prefix: --lineage-csv
- id: in_aliases
  doc: JSON with aliases for lettered lineages.
  type: string?
  inputBinding:
    prefix: --aliases
- id: in_out_folder
  doc: "A directory for output FASTA files\n"
  type: Directory?
  inputBinding:
    prefix: --out-folder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
- id: out_out_folder
  doc: "A directory for output FASTA files\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastafunk
- split
