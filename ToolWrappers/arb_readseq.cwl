class: CommandLineTool
id: arb_readseq.cwl
inputs:
- id: in_change_lower_case
  doc: '[aselower]   change to lower case'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_change_upper_case
  doc: '[ASEUPPER]   change to UPPER CASE'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_de_gap
  doc: '[=-]     remove gap symbols'
  type: boolean
  inputBinding:
    prefix: -degap
- id: in_select_item_numbers
  doc: '[tem=2,3,4]  select Item number(s) from several'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_list_sequences_only
  doc: '[ist]        List sequences only'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_outseq_redirect_output
  doc: '[utput=]out.seq  redirect Output'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_pipe_command_line
  doc: '[ipe]        Pipe (command line, <stdin, >stdout)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__change_reversecomplement
  doc: '[everse]     change to Reverse-complement'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__verbose_progress
  doc: '[erbose]     Verbose progress'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_wid
  doc: '[th]=#            sequence line width'
  type: boolean
  inputBinding:
    prefix: -wid
- id: in_tab
  doc: =#                left indent
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_col
  doc: '[space]=#         column space within sequence line on output'
  type: boolean
  inputBinding:
    prefix: -col
- id: in_gap
  doc: '[count]           count gap chars in sequence numbers'
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_name_right
  doc: '[=#]   name on left/right side [=max width]'
  type: boolean
  inputBinding:
    prefix: -nameright
- id: in_name_top
  doc: name at top/bottom
  type: boolean
  inputBinding:
    prefix: -nametop
- id: in_num_right
  doc: seq index on left/right side
  type: boolean
  inputBinding:
    prefix: -numright
- id: in_num_top
  doc: index on top/bottom
  type: boolean
  inputBinding:
    prefix: -numtop
- id: in_match
  doc: '[=.]            use match base for 2..n species'
  type: boolean
  inputBinding:
    prefix: -match
- id: in_inter
  doc: '[line=#]        blank line(s) between sequence blocks'
  type: boolean
  inputBinding:
    prefix: -inter
- id: in_var_19
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_a_select_sequences
  doc: -a[ll]         select All sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_readseq
