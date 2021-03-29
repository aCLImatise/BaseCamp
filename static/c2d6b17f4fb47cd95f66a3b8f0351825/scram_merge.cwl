class: CommandLineTool
id: scram_merge.cwl
inputs:
- id: in_set_input_format
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string?
  inputBinding:
    prefix: -I
- id: in_set_output_format
  doc: 'Set output format: "bam", "sam" or "cram".'
  type: string?
  inputBinding:
    prefix: -O
- id: in_set_zlib_compression
  doc: Set zlib compression level.
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_no_zlib_compression
  doc: No zlib compression.
  type: long?
  inputBinding:
    prefix: '-0'
- id: in_specifies_refseqstartend_range
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string?
  inputBinding:
    prefix: -R
- id: in_specifies_reference_file
  doc: '[Cram] Specifies the reference file.'
  type: File?
  inputBinding:
    prefix: -r
- id: in_sequences_slice_default
  doc: '[Cram] Sequences per slice, default 10000.'
  type: long?
  inputBinding:
    prefix: -s
- id: in_slices_container_default
  doc: '[Cram] Slices per container, default 1.'
  type: long?
  inputBinding:
    prefix: -S
- id: in_specify_format_version
  doc: '[Cram] Specify the file format version to write (eg 1.1, 2.0)'
  type: File?
  inputBinding:
    prefix: -V
- id: in_embed_reference_sequence
  doc: '[Cram] Embed reference sequence.'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0
cwlVersion: v1.1
baseCommand:
- scram_merge
