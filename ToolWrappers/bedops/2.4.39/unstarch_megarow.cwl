class: CommandLineTool
id: unstarch_megarow.cwl
inputs:
- id: in_has_duplicates
  doc: '| --has-nested | --list |'
  type: boolean
  inputBinding:
    prefix: --has-duplicates
- id: in_list_json
  doc: '| --list-chromosomes |'
  type: boolean
  inputBinding:
    prefix: --list-json
- id: in_archive_timestamp
  doc: '| --note |'
  type: boolean
  inputBinding:
    prefix: --archive-timestamp
- id: in_archive_version
  doc: '| --is-starch |'
  type: boolean
  inputBinding:
    prefix: --archive-version
- id: in_signature
  doc: '| --verify-signature ]'
  type: boolean
  inputBinding:
    prefix: --signature
- id: in_elements
  doc: "Show total element count for archive. If\n<chromosome> is specified, the result\n\
    shows the element count for the\nchromosome."
  type: boolean
  inputBinding:
    prefix: --elements
- id: in_elements_max_string_length
  doc: "Show the maximum string length over all\nelements in <chromosome>, if specified.\n\
    If <chromosome> is not specified, the\nmaximum string length is shown over all\n\
    chromosomes."
  type: boolean
  inputBinding:
    prefix: --elements-max-string-length
- id: in_bases_uniq
  doc: "Show total and unique base counts,\nrespectively, for archive. If\n<chromosome>\
    \ is specified, the count is\nspecific to the chromosome, if available."
  type: boolean
  inputBinding:
    prefix: --bases-uniq
- id: in_has_duplicate_as_string
  doc: "Show whether there is one or more\nduplicate elements in the specified\nchromosome,\
    \ either as a numerical (1/0)\nor string (true/false) value. If no\n<chromosome>\
    \ is specified, the value\ngiven indicates if there is one or more\nduplicate\
    \ elements across all chromosome\nrecords."
  type: boolean
  inputBinding:
    prefix: --has-duplicate-as-string
- id: in_has_nested_as_string
  doc: "Show whether there is one ore more nested\nelements in the specified chromosome,\n\
    either as a numerical (1/0) or string\n(true/false) value. If no <chromosome>\
    \ is\nspecified, the value given indicates if\nthere is one or more nested elements\n\
    across all chromosome records."
  type: boolean
  inputBinding:
    prefix: --has-nested-as-string
- id: in_list
  doc: "List archive metadata (output is in text\nformat). If chromosome is specified,\
    \ the\nattributes of the given chromosome are\nshown."
  type: boolean
  inputBinding:
    prefix: --list
- id: in_list_json_no_trailing_new_line
  doc: "List archive metadata (output is in JSON\nformat)"
  type: boolean
  inputBinding:
    prefix: --list-json-no-trailing-newline
- id: in_list_chromosomes
  doc: "List all or specified chromosome in\nstarch archive (like \"bedextract --list-\n\
    chr\"). If <chromosome> is specified but\nis not in the output list, nothing is\n\
    returned."
  type: boolean
  inputBinding:
    prefix: --list-chromosomes
- id: in_note
  doc: Show descriptive note, if available.
  type: boolean
  inputBinding:
    prefix: --note
- id: in_verify_signature
  doc: "Verify data integrity of specified\n<chromosome>, or the integrity of all\n\
    available chromosomes, if the\n<chromosome> is unspecified."
  type: boolean
  inputBinding:
    prefix: --verify-signature
- id: in_archive_type
  doc: Show archive compression type.
  type: boolean
  inputBinding:
    prefix: --archive-type
- id: in_is_starch
  doc: "Test if <starch-file> is a valid archive\nand print 0/1 (false/true) to standard\n\
    output. Unstarch will also return a non-\nzero error code if the input file is\
    \ not\na valid archive."
  type: boolean
  inputBinding:
    prefix: --is-starch
- id: in_un_starch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chromosome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unstarch-megarow
