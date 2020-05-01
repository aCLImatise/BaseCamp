#!/usr/bin/env cwl-runner

baseCommand:
- unstarch-float128
class: CommandLineTool
cwlVersion: v1.0
id: unstarch-float128
inputs:
- doc: Show total element count for archive. If <chromosome> is specified, the result
    shows the element count for the chromosome.
  id: elements
  inputBinding:
    prefix: --elements
  type: boolean
- doc: Show the maximum string length over all elements in <chromosome>, if specified.
    If <chromosome> is not specified, the maximum string length is shown over all
    chromosomes.
  id: elements_max_string_length
  inputBinding:
    prefix: --elements-max-string-length
  type: boolean
- doc: Show total and unique base counts, respectively, for archive. If <chromosome>
    is specified, the count is specific to the chromosome, if available.
  id: bases_uniq
  inputBinding:
    prefix: --bases-uniq
  type: boolean
- doc: Show whether there is one or more duplicate elements in the specified chromosome,
    either as a numerical (1/0) or string (true/false) value. If no <chromosome> is
    specified, the value given indicates if there is one or more duplicate elements
    across all chromosome records.
  id: has_duplicate_as_string
  inputBinding:
    prefix: --has-duplicate-as-string
  type: boolean
- doc: Show whether there is one ore more nested elements in the specified chromosome,
    either as a numerical (1/0) or string (true/false) value. If no <chromosome> is
    specified, the value given indicates if there is one or more nested elements across
    all chromosome records.
  id: has_nested_as_string
  inputBinding:
    prefix: --has-nested-as-string
  type: boolean
- doc: List archive metadata (output is in text format). If chromosome is specified,
    the attributes of the given chromosome are shown.
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: List archive metadata (output is in JSON format)
  id: list_json_no_trailing_new_line
  inputBinding:
    prefix: --list-json-no-trailing-newline
  type: boolean
- doc: ',                      '
  id: list_chr
  inputBinding:
    prefix: --list-chr
  type: boolean
- doc: List all or specified chromosome in starch archive (like "bedextract --list-
    chr"). If <chromosome> is specified but is not in the output list, nothing is
    returned.
  id: list_chromosomes
  inputBinding:
    prefix: --list-chromosomes
  type: boolean
- doc: Show descriptive note, if available.
  id: note
  inputBinding:
    prefix: --note
  type: boolean
- doc: Display the Base64-encoded SHA-1 data integrity signature for specified <chromosome>,
    or the signatures of the metadata and all available chromosomes, if the <chromosome>
    is unspecified.
  id: signature
  inputBinding:
    prefix: --signature
  type: boolean
- doc: Verify data integrity of specified <chromosome>, or the integrity of all available
    chromosomes, if the <chromosome> is unspecified.
  id: verify_signature
  inputBinding:
    prefix: --verify-signature
  type: boolean
- doc: Show archive creation timestamp (ISO 8601 format).
  id: archive_timestamp
  inputBinding:
    prefix: --archive-timestamp
  type: boolean
- doc: Show archive compression type.
  id: archive_type
  inputBinding:
    prefix: --archive-type
  type: boolean
- doc: Show archive version.
  id: archive_version
  inputBinding:
    prefix: --archive-version
  type: boolean
- doc: Test if <starch-file> is a valid archive and print 0/1 (false/true) to standard
    output. Unstarch will also return a non- zero error code if the input file is
    not a valid archive.
  id: is_starch
  inputBinding:
    prefix: --is-starch
  type: boolean
