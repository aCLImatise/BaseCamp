class: CommandLineTool
id: ../../../blocksplit.cwl
inputs:
- id: input_file
  doc: The input VCF/BCF file(s) (use file:sample to  specify a sample)
  type: string
  inputBinding:
    prefix: --input-file
- id: arg_write_file
  doc: '[ --output ] arg        Write a bed file giving the locations of  overlapping
    blocks (use - for stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_use_regions
  doc: '[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  type: boolean
  inputBinding:
    prefix: -R
- id: arg_use_targets
  doc: '[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things outside the bed regions).'
  type: boolean
  inputBinding:
    prefix: -T
- id: arg_location_subset
  doc: '[ --location ] arg      The location / subset.'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_maximum_number_records
  doc: '[ --limit-records ] arg Maximum number of records to process'
  type: boolean
  inputBinding:
    prefix: -L
- id: arg_print_message
  doc: '[ --message-every ] arg Print a message every N records.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_overlap_window
  doc: '[ --window ] arg        Overlap window length.'
  type: boolean
  inputBinding:
    prefix: -w
- id: arg_maximum_number_break
  doc: '[ --nblocks ] arg       Maximum number of blocks to break into (32).'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_minimum_number
  doc: '[ --nvars ] arg         Minimum number of variants per block (100).'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: verbose
  doc: Verbose output.
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- blocksplit
