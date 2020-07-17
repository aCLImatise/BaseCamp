class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfcheck.cwl
inputs:
- id: input_file
  doc: The input file
  type: string
  inputBinding:
    prefix: --input-file
- id: arg_output_json
  doc: '[ --output-file ] arg   The output JSON file with basic counts.'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_start_location
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
- id: arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_strict_assertions
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
- id: arg_show_warnings
  doc: '[ --all-warnings ] arg  Show all warnings, not just the first instance.'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfcheck
