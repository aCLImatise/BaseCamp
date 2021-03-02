class: CommandLineTool
id: cramtools_fixheader.cwl
inputs:
- id: in_confirm_md_five
  doc: 'Calculate MD5 for sequences mentioned in the header. Requires --reference-fasta-file
    option. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --confirm-md5
- id: in_inject_uri
  doc: 'Inject URI for all reference sequences in the header. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --inject-uri
- id: in_input_cram_file
  doc: The path to the CRAM file.
  type: boolean?
  inputBinding:
    prefix: --input-cram-file
- id: in_reference_fast_a_file
  doc: Path to the reference fasta file, it must be uncompressed and indexed (use
    'samtools faidx' for example).
  type: boolean?
  inputBinding:
    prefix: --reference-fasta-file
- id: in_uri_pattern
  doc: 'String formatting pattern for sequence URI to be injected. (default: http://www.ebi.ac.uk/ena/cram/md5/%s)'
  type: boolean?
  inputBinding:
    prefix: --uri-pattern
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_fix_header
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cramtools
- fixheader
