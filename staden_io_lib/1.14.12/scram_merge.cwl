class: CommandLineTool
id: ../../../scram_merge.cwl
inputs:
- id: set_input_format
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string
  inputBinding:
    prefix: -I
- id: set_output_format
  doc: 'Set output format: "bam", "sam" or "cram".'
  type: string
  inputBinding:
    prefix: -O
- id: set_zlib_level
  doc: Set zlib compression level.
  type: string
  inputBinding:
    prefix: '-1'
- id: no_zlib_compression
  doc: No zlib compression.
  type: string
  inputBinding:
    prefix: '-0'
- id: specifies_refseqstartend_range
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string
  inputBinding:
    prefix: -R
- id: specifies_reference_file
  doc: '[Cram] Specifies the reference file.'
  type: string
  inputBinding:
    prefix: -r
- id: sequences_slice_default
  doc: '[Cram] Sequences per slice, default 10000.'
  type: long
  inputBinding:
    prefix: -s
- id: slices_container_default
  doc: '[Cram] Slices per container, default 1.'
  type: long
  inputBinding:
    prefix: -S
- id: specify_format_version
  doc: '[Cram] Specify the file format version to write (eg 1.1, 2.0)'
  type: string
  inputBinding:
    prefix: -V
- id: embed_reference_sequence
  doc: '[Cram] Embed reference sequence.'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- scram_merge
