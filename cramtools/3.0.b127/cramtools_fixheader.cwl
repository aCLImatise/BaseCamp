class: CommandLineTool
id: cramtools_fixheader.cwl
inputs:
- id: confirm_md5
  doc: 'Calculate MD5 for sequences mentioned in the header. Requires --reference-fasta-file
    option. (default: false)'
  type: boolean
  inputBinding:
    prefix: --confirm-md5
- id: inject_uri
  doc: 'Inject URI for all reference sequences in the header. (default: false)'
  type: boolean
  inputBinding:
    prefix: --inject-uri
- id: input_cram_file
  doc: The path to the CRAM file.
  type: boolean
  inputBinding:
    prefix: --input-cram-file
- id: reference_fast_a_file
  doc: "Path to the reference fasta file, it must be uncompressed and indexed (use\
    \ 'samtools faidx' for example). "
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: uri_pattern
  doc: 'String formatting pattern for sequence URI to be injected. (default: http://www.ebi.ac.uk/ena/cram/md5/%s)'
  type: boolean
  inputBinding:
    prefix: --uri-pattern
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- fixheader
