class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/unstarch_float128.cwl
inputs:
- id: list_chromosomes
  doc: List all or specified chromosome in starch archive (like "bedextract --list-
    chr"). If <chromosome> is specified but is not in the output list, nothing is
    returned.
  type: boolean
  inputBinding:
    prefix: --list-chromosomes
- id: note
  doc: Show descriptive note, if available.
  type: boolean
  inputBinding:
    prefix: --note
- id: signature
  doc: Display the Base64-encoded SHA-1 data integrity signature for specified <chromosome>,
    or the signatures of the metadata and all available chromosomes, if the <chromosome>
    is unspecified.
  type: boolean
  inputBinding:
    prefix: --signature
- id: verify_signature
  doc: Verify data integrity of specified <chromosome>, or the integrity of all available
    chromosomes, if the <chromosome> is unspecified.
  type: boolean
  inputBinding:
    prefix: --verify-signature
- id: archive_timestamp
  doc: Show archive creation timestamp (ISO 8601 format).
  type: boolean
  inputBinding:
    prefix: --archive-timestamp
- id: archive_type
  doc: Show archive compression type.
  type: boolean
  inputBinding:
    prefix: --archive-type
- id: archive_version
  doc: Show archive version.
  type: boolean
  inputBinding:
    prefix: --archive-version
- id: is_starch
  doc: Test if <starch-file> is a valid archive and print 0/1 (false/true) to standard
    output. Unstarch will also return a non- zero error code if the input file is
    not a valid archive.
  type: boolean
  inputBinding:
    prefix: --is-starch
- id: un_starch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chromosome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- unstarch-float128
