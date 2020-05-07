class: CommandLineTool
id: cramtools_merge.cwl
inputs:
- id: output_file
  doc: Path to the output BAM file. Omit for stdout.
  type: boolean
  inputBinding:
    prefix: --output-file
- id: reference_fast_a_file
  doc: Path to the reference fasta file, it must be uncompressed and indexed (use
    'samtools faidx' for example).
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: region
  doc: 'Alignment slice specification, for example: chr1:65000-100000.'
  type: boolean
  inputBinding:
    prefix: --region
- id: sam_format
  doc: 'Output in SAM rather than BAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --sam-format
- id: sam_header
  doc: 'Print SAM file header when output format is text SAM. (default: false)'
  type: boolean
  inputBinding:
    prefix: --sam-header
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: validation_level
  doc: 'Change validation stringency level: STRICT, LENIENT, SILENT. (default: STRICT)'
  type: boolean
  inputBinding:
    prefix: --validation-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- merge
