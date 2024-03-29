class: CommandLineTool
id: fastafunk_consensus.cwl
inputs:
- id: in_index_field
  doc: '[--index-column <column>]'
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
- id: in_in_metadata
  doc: "CSV of metadata with same naming convention as fasta\nfile"
  type: File?
  inputBinding:
    prefix: --in-metadata
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
- id: in_out_fast_a
  doc: "A FASTA file (else writes to stdout)\n"
  type: File?
  inputBinding:
    prefix: --out-fasta
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
- consensus
