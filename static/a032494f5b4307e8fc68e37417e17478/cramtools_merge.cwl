class: CommandLineTool
id: cramtools_merge.cwl
inputs:
- id: in_output_file
  doc: Path to the output BAM file. Omit for stdout.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_reference_fast_a_file
  doc: Path to the reference fasta file, it must be uncompressed and indexed (use
    'samtools faidx' for example).
  type: boolean?
  inputBinding:
    prefix: --reference-fasta-file
- id: in_region
  doc: 'Alignment slice specification, for example: chr1:65000-100000.'
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_sam_format
  doc: 'Output in SAM rather than BAM format. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --sam-format
- id: in_sam_header
  doc: 'Print SAM file header when output format is text SAM. (default: false)'
  type: File?
  inputBinding:
    prefix: --sam-header
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_validation_level
  doc: 'Change validation stringency level: STRICT, LENIENT, SILENT. (default: STRICT)'
  type: boolean?
  inputBinding:
    prefix: --validation-level
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path to the output BAM file. Omit for stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_sam_header
  doc: 'Print SAM file header when output format is text SAM. (default: false)'
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_header)
hints: []
cwlVersion: v1.1
baseCommand:
- cramtools
- merge
