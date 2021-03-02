class: CommandLineTool
id: e_PCR.cwl
inputs:
- id: in__margin_default
  doc: '##   Margin (default 50)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__wordsize_default
  doc: '##   Wordsize  (default 7)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_max_mismatches_allowed
  doc: '##   Max mismatches allowed (default 0)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_max_indels_allowed
  doc: '##   Max indels allowed (default 0)'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_use_discontiguos_words
  doc: '##   Use ## discontiguos words, slow if ##>1'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_set_output_file
  doc: '##   Set output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_set_output_format
  doc: "##   Set output format:\n1 - classic, range (pos1..pos2)\n2 - classic, midpoint\n\
    3 - tabular\n4 - tabular with alignment in comments (slow)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_set_default_size
  doc: '##-## Set default size range (default 100-350)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_turn_hits_onoff
  doc: +-   Turn hits postprocess on/off
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__verbosity_flags
  doc: '##   Verbosity flags'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_use_presize_alignmens
  doc: "|f  Use presize alignmens (only if gaps>0), slow\na - Allways or f - as Fallback"
  type: long?
  inputBinding:
    prefix: -a
- id: in_use_end_lowercase
  doc: +-   Use 5'-end lowercase masking of primers (default -)
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_uppercase_primers_default
  doc: +-   Uppercase all primers (default -)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_mid
  doc: Same as T=2
  type: boolean?
  inputBinding:
    prefix: -mid
- id: in_hv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hV
- id: in_posix_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_sts_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_compat_options
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_set_output_file
  doc: '##   Set output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_set_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- e-PCR
