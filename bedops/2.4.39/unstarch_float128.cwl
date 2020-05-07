class: CommandLineTool
id: unstarch_float128.cwl
inputs:
- id: elements
  doc: Show total element count for archive. If <chromosome> is specified, the result
    shows the element count for the chromosome.
  type: boolean
  inputBinding:
    prefix: --elements
- id: elements_max_string_length
  doc: Show the maximum string length over all elements in <chromosome>, if specified.
    If <chromosome> is not specified, the maximum string length is shown over all
    chromosomes.
  type: boolean
  inputBinding:
    prefix: --elements-max-string-length
- id: bases_uniq
  doc: Show total and unique base counts, respectively, for archive. If <chromosome>
    is specified, the count is specific to the chromosome, if available.
  type: boolean
  inputBinding:
    prefix: --bases-uniq
- id: has_duplicate_as_string
  doc: Show whether there is one or more duplicate elements in the specified chromosome,
    either as a numerical (1/0) or string (true/false) value. If no <chromosome> is
    specified, the value given indicates if there is one or more duplicate elements
    across all chromosome records.
  type: boolean
  inputBinding:
    prefix: --has-duplicate-as-string
- id: has_nested_as_string
  doc: Show whether there is one ore more nested elements in the specified chromosome,
    either as a numerical (1/0) or string (true/false) value. If no <chromosome> is
    specified, the value given indicates if there is one or more nested elements across
    all chromosome records.
  type: boolean
  inputBinding:
    prefix: --has-nested-as-string
- id: list
  doc: List archive metadata (output is in text format). If chromosome is specified,
    the attributes of the given chromosome are shown.
  type: boolean
  inputBinding:
    prefix: --list
- id: list_json_no_trailing_new_line
  doc: List archive metadata (output is in JSON format)
  type: boolean
  inputBinding:
    prefix: --list-json-no-trailing-newline
- id: list_chr
  doc: ',                      '
  type: boolean
  inputBinding:
    prefix: --list-chr
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
outputs: []
cwlVersion: v1.1
baseCommand:
- unstarch-float128
