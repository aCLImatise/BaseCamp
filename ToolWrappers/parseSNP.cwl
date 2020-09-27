class: CommandLineTool
id: parseSNP.cwl
inputs:
- id: in_filter_matches_percent_identity
  doc: filter matches on percent identity
  type: long
  inputBinding:
    prefix: -i
- id: in_filter_matches_percent_coverage
  doc: filter matches on percent coverage
  type: long
  inputBinding:
    prefix: -c
- id: in_save_matches_contain
  doc: "save matches that do not contain the\nto the file 'failed'"
  type: File
  inputBinding:
    prefix: -F
- id: in_save_parsed_snps
  doc: "save the parsed SNPs to the file\n'output'"
  type: File
  inputBinding:
    prefix: -O
- id: in_report_debugging_stuff
  doc: "report debugging stuff into files\nprefixed with 'prefix'"
  type: string
  inputBinding:
    prefix: -D
- id: in_use_single_character
  doc: "Use the single character delimiter as\nthe end of the defline ID field.  The\n\
    default is to split on any whitespace."
  type: string
  inputBinding:
    prefix: -d
- id: in_use_tag_size_tried
  doc: "Use this tag as the size of the snp.\n'/size=' is tried by default."
  type: long
  inputBinding:
    prefix: -s
- id: in_use_tag_position_tried
  doc: "Use this tag as the position of the snp.\n'allelePos=' and '/pos=' are tried\
    \ by\ndefault, and if posTag is not found.\nTAGS: The number immediately after\
    \ the first\noccurance of the tag will be used."
  type: long
  inputBinding:
    prefix: -p
- id: in_additive_offset_snp
  doc: "An additive offset to the SNP position.\nThe default is 0."
  type: long
  inputBinding:
    prefix: -o
- id: in_format
  doc: "1 - use the original (default) format\n2 - use an extended format, includes\
    \ the\nposition in the alignment string"
  type: string
  inputBinding:
    prefix: -format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_parsed_snps
  doc: "save the parsed SNPs to the file\n'output'"
  type: File
  outputBinding:
    glob: $(inputs.in_save_parsed_snps)
cwlVersion: v1.1
baseCommand:
- parseSNP
