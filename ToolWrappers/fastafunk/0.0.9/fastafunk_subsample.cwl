class: CommandLineTool
id: fastafunk_subsample.cwl
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
- id: in_group_column
  doc: "[<column> ...]\nColumn(s) in the metadata file to define groupings"
  type: File?
  inputBinding:
    prefix: --group-column
- id: in_where_field
  doc: "=<regex>\nAdditional matches to header fields"
  type: string?
  inputBinding:
    prefix: --where-field
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
- id: in_target_file
  doc: "CSV file of target numbers per group e.g. an edited\nversion of the count\
    \ output"
  type: File?
  inputBinding:
    prefix: --target-file
- id: in_select_by_max_column
  doc: "Column in the metadata file maximize over when\nsubsetting"
  type: long?
  inputBinding:
    prefix: --select-by-max-column
- id: in_select_by_min_column
  doc: "Column in the metadata file minimize over when\nsubsetting"
  type: long?
  inputBinding:
    prefix: --select-by-min-column
- id: in_sample_size
  doc: "The number of samples per group to select if not\nspecified by target file"
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_exclude_uk
  doc: "Includes all UK samples in subsample, and additionally\nkeeps the target number\
    \ of non-UK samples per group\n"
  type: boolean?
  inputBinding:
    prefix: --exclude-uk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
- id: out_target_file
  doc: "CSV file of target numbers per group e.g. an edited\nversion of the count\
    \ output"
  type: File?
  outputBinding:
    glob: $(inputs.in_target_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastafunk
- subsample
