class: CommandLineTool
id: vcfcheck.cwl
inputs:
- id: input_file
  doc: The input file
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output-file ] arg   The output JSON file with basic counts.'
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: '[ --location ] arg      Start location.'
  type: boolean
  inputBinding:
    prefix: -l
- id: limit_records
  doc: Maximum number of records to process
  type: string
  inputBinding:
    prefix: --limit-records
- id: message_every
  doc: Print a message every N records.
  type: string
  inputBinding:
    prefix: --message-every
- id: f
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: h
  doc: "[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't  allow\
    \ these to overlap)."
  type: boolean
  inputBinding:
    prefix: -H
- id: check_bcf_errors
  doc: Check if turning this file into BCF will succeed  or fail.
  type: string
  inputBinding:
    prefix: --check-bcf-errors
- id: w
  doc: '[ --all-warnings ] arg  Show all warnings, not just the first instance.'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfcheck
