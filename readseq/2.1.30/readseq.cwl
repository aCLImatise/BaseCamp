class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/readseq.cwl
inputs:
- id: _select_sequences
  doc: '[ll]              select All sequences'
  type: boolean
  inputBinding:
    prefix: -a
- id: change_lower_case
  doc: '[aselower]        change to lower case'
  type: boolean
  inputBinding:
    prefix: -c
- id: change_upper_case
  doc: '[ASEUPPER]        change to UPPER CASE'
  type: boolean
  inputBinding:
    prefix: -C
- id: ch
  doc: '[ecksum]         calculate & print checksum of sequences'
  type: boolean
  inputBinding:
    prefix: -ch
- id: de_gap
  doc: '[=-]          remove gap symbols'
  type: boolean
  inputBinding:
    prefix: -degap
- id: select_item_numbers
  doc: '[tem=2,3,4]       select Item number(s) from several'
  type: boolean
  inputBinding:
    prefix: -i
- id: list_sequences_only
  doc: '[ist]             List sequences only'
  type: boolean
  inputBinding:
    prefix: -l
- id: outseq_redirect_output
  doc: '[utput=]out.seq   redirect Output'
  type: boolean
  inputBinding:
    prefix: -o
- id: pipe_command_line
  doc: '[ipe]             Pipe (command line, < stdin, > stdout)'
  type: boolean
  inputBinding:
    prefix: -p
- id: reversecomplement_input_sequence
  doc: '[everse]          reverse-complement of input sequence'
  type: boolean
  inputBinding:
    prefix: -r
- id: use_several_tio
  doc: '[ranslate=]io     translate input symbol [i] to output symbol [o] use several
    -tio to translate several symbols'
  type: boolean
  inputBinding:
    prefix: -t
- id: _verbose_progress
  doc: '[erbose]          Verbose progress'
  type: boolean
  inputBinding:
    prefix: -v
- id: compare
  doc: Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)
  type: string
  inputBinding:
    prefix: -compare
- id: amino
  doc: '[translate]   translate dna to amino acids'
  type: boolean
  inputBinding:
    prefix: -amino
- id: pair
  doc: '* combine features (fff,gff) and sequence files to one output'
  type: string
  inputBinding:
    prefix: -pair
- id: un_pair
  doc: '* split features,sequence from one input to two files'
  type: string
  inputBinding:
    prefix: -unpair
- id: wid
  doc: '[th]=#            sequence line width'
  type: boolean
  inputBinding:
    prefix: -wid
- id: tab
  doc: =#                left indent
  type: boolean
  inputBinding:
    prefix: -tab
- id: col
  doc: '[space]=#         column space within sequence line on output'
  type: boolean
  inputBinding:
    prefix: -col
- id: gap
  doc: '[count]           count gap chars in sequence numbers'
  type: boolean
  inputBinding:
    prefix: -gap
- id: name_right
  doc: '[=#]   name on left/right side [=max width]'
  type: boolean
  inputBinding:
    prefix: -nameright
- id: name_top
  doc: name at top/bottom
  type: boolean
  inputBinding:
    prefix: -nametop
- id: num_right
  doc: seq index on left/right side
  type: boolean
  inputBinding:
    prefix: -numright
- id: num_top
  doc: index on top/bottom
  type: boolean
  inputBinding:
    prefix: -numtop
- id: match
  doc: '[=.]            use match base for 2..n species'
  type: boolean
  inputBinding:
    prefix: -match
- id: inter
  doc: '[line=#]        blank line(s) between sequence blocks'
  type: boolean
  inputBinding:
    prefix: -inter
- id: cp
  doc: ''
  type: string
  inputBinding:
    prefix: -cp
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: run
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- readseq
