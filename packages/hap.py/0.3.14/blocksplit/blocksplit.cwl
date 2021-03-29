class: CommandLineTool
id: blocksplit.cwl
inputs:
- id: in_input_file
  doc: "The input VCF/BCF file(s) (use file:sample to\nspecify a sample)"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_write_file
  doc: "[ --output ] arg        Write a bed file giving the locations of\noverlapping\
    \ blocks (use - for stdout)."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_use_regionstraversal
  doc: "[ --regions ] arg       Use a bed file for getting a subset of regions\n(traversal\
    \ via tabix)."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_targetsstreaming_whole_file
  doc: "[ --targets ] arg       Use a bed file for getting a subset of targets\n(streaming\
    \ the whole file, ignoring things outside\nthe bed regions)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_arg_location_subset
  doc: '[ --location ] arg      The location / subset.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_maximum_number_records
  doc: '[ --limit-records ] arg Maximum number of records to process'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_arg_print_message
  doc: '[ --message-every ] arg Print a message every N records.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_overlap_window
  doc: '[ --window ] arg        Overlap window length.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_maximum_number_blocks
  doc: '[ --nblocks ] arg       Maximum number of blocks to break into (32).'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_minimum_number
  doc: '[ --nvars ] arg         Minimum number of variants per block (100).'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_verbose
  doc: Verbose output.
  type: string?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_write_file
  doc: "[ --output ] arg        Write a bed file giving the locations of\noverlapping\
    \ blocks (use - for stdout)."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_write_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- blocksplit
