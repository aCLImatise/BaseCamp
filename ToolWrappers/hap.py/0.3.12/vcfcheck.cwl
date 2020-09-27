class: CommandLineTool
id: vcfcheck.cwl
inputs:
- id: in_input_file
  doc: The input file
  type: File
  inputBinding:
    prefix: --input-file
- id: in_arg_output_json
  doc: '[ --output-file ] arg   The output JSON file with basic counts.'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_start_location
  doc: '[ --location ] arg      Start location.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_limit_records
  doc: Maximum number of records to process
  type: long
  inputBinding:
    prefix: --limit-records
- id: in_message_every
  doc: Print a message every N records.
  type: string
  inputBinding:
    prefix: --message-every
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_strict_homref
  doc: "[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't\nallow\
    \ these to overlap)."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_check_bcf_errors
  doc: "Check if turning this file into BCF will succeed\nor fail."
  type: File
  inputBinding:
    prefix: --check-bcf-errors
- id: in_arg_show_warnings
  doc: '[ --all-warnings ] arg  Show all warnings, not just the first instance.'
  type: boolean
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_json
  doc: '[ --output-file ] arg   The output JSON file with basic counts.'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_json)
cwlVersion: v1.1
baseCommand:
- vcfcheck
