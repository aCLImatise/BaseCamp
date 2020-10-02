class: CommandLineTool
id: re_PCR.cwl
inputs:
- id: in_var_0
  doc: Perform primer lookup using hash-file
  type: File
  inputBinding:
    prefix: -p
- id: in_var_1
  doc: Perform primer lookup using hash-file
  type: File
  inputBinding:
    prefix: -P
- id: in_var_2
  doc: Perform STS lookup using hash-file
  type: File
  inputBinding:
    prefix: -s
- id: in_var_3
  doc: Perform STS lookup using hash-file
  type: File
  inputBinding:
    prefix: -S
- id: in_set_max_allowed_mismatches
  doc: Set max allowed mismatches per primer for lookup
  type: long
  inputBinding:
    prefix: -n
- id: in_set_max_allowed_indels
  doc: Set max allowed indels per primer for lookup
  type: long
  inputBinding:
    prefix: -g
- id: in_set_variability_sts
  doc: Set variability for STS size for lookup
  type: long
  inputBinding:
    prefix: -m
- id: in_use_presize_alignments
  doc: Use presize alignments (only if gaps>0)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_alignments_comments
  doc: Print alignments in comments
  type: boolean
  inputBinding:
    prefix: -G
- id: in_set_default_size
  doc: Set default STS size
  type: long
  inputBinding:
    prefix: -d
- id: in_enabledisable_reverse_sts
  doc: +|-          Enable/disable reverse STS lookup
  type: boolean
  inputBinding:
    prefix: -r
- id: in_enabledisable_syscall_optimisation
  doc: +|-          Enable/disable syscall optimisation
  type: boolean
  inputBinding:
    prefix: -O
- id: in_set_number_stses
  doc: Set number of STSes per batch
  type: long
  inputBinding:
    prefix: -C
- id: in_set_output_name
  doc: Set output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_quiet_progress_indicator
  doc: Quiet (no progress indicator)
  type: boolean
  inputBinding:
    prefix: -q
- id: in_lq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lq
- id: in_hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hV
- id: in_primer
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_set_output_name
  doc: Set output file name
  type: File
  outputBinding:
    glob: $(inputs.in_set_output_name)
cwlVersion: v1.1
baseCommand:
- re-PCR
