class: CommandLineTool
id: readseq.cwl
inputs:
- id: a
  doc: '[ll]              select All sequences'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '[aselower]        change to lower case'
  type: boolean
  inputBinding:
    prefix: -c
- id: c
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
- id: f
  doc: '[ormat=]#         Format number for output,  or'
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: '[ormat=]Name      Format name for output see Formats   list below for names
    and numbers'
  type: boolean
  inputBinding:
    prefix: -f
- id: inform
  doc: '[at]=#       input format number,  or'
  type: boolean
  inputBinding:
    prefix: -inform
- id: inform
  doc: '[at]=Name    input format name.  Assume input data is this format'
  type: boolean
  inputBinding:
    prefix: -inform
- id: i
  doc: '[tem=2,3,4]       select Item number(s) from several'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: '[ist]             List sequences only'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '[utput=]out.seq   redirect Output'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '[ipe]             Pipe (command line, < stdin, > stdout)'
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: '[everse]          reverse-complement of input sequence'
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: '[ranslate=]io     translate input symbol [i] to output symbol [o] use several
    -tio to translate several symbols'
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: '[erbose]          Verbose progress'
  type: boolean
  inputBinding:
    prefix: -v
- id: compare
  doc: =1          Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)
  type: boolean
  inputBinding:
    prefix: -compare
- id: amino
  doc: '[translate]   translate dna to amino acids'
  type: boolean
  inputBinding:
    prefix: -amino
- id: feat
  doc: '[ures]=exon,CDS...   extract sequence of selected features'
  type: boolean
  inputBinding:
    prefix: -feat
- id: no_feat
  doc: '[ures]=repeat_region,intron... remove sequence of selected features '
  type: boolean
  inputBinding:
    prefix: -nofeat
- id: field
  doc: ',ID...      include selected document fields in output'
  type: string
  inputBinding:
    prefix: -field
- id: no_field
  doc: ',... remove selected document fields from output '
  type: string
  inputBinding:
    prefix: -nofield
- id: extract
  doc: =1000..9999  * extract all features, sequence from given base range
  type: boolean
  inputBinding:
    prefix: -extract
- id: subrange
  doc: =-1000..10  * extract subrange of sequence for feature locations
  type: boolean
  inputBinding:
    prefix: -subrange
- id: subrange
  doc: '=1..end      '
  type: boolean
  inputBinding:
    prefix: -subrange
- id: subrange
  doc: '+99  '
  type: string
  inputBinding:
    prefix: -subrange
- id: pair
  doc: =1              * combine features (fff,gff) and sequence files to one output
  type: boolean
  inputBinding:
    prefix: -pair
- id: un_pair
  doc: =1            * split features,sequence from one input to two files
  type: boolean
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
- id: a
  doc: '[ll]              select All sequences'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '[aselower]        change to lower case'
  type: boolean
  inputBinding:
    prefix: -c
- id: c
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
- id: f
  doc: '[ormat=]#         Format number for output,  or'
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: '[ormat=]Name      Format name for output see Formats   list below for names
    and numbers'
  type: boolean
  inputBinding:
    prefix: -f
- id: inform
  doc: '[at]=#       input format number,  or'
  type: boolean
  inputBinding:
    prefix: -inform
- id: inform
  doc: '[at]=Name    input format name.  Assume input data is this format'
  type: boolean
  inputBinding:
    prefix: -inform
- id: i
  doc: '[tem=2,3,4]       select Item number(s) from several'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: '[ist]             List sequences only'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '[utput=]out.seq   redirect Output'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '[ipe]             Pipe (command line, < stdin, > stdout)'
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: '[everse]          reverse-complement of input sequence'
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: '[ranslate=]io     translate input symbol [i] to output symbol [o] use several
    -tio to translate several symbols'
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: '[erbose]          Verbose progress'
  type: boolean
  inputBinding:
    prefix: -v
- id: compare
  doc: =1          Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)
  type: boolean
  inputBinding:
    prefix: -compare
- id: amino
  doc: '[translate]   translate dna to amino acids'
  type: boolean
  inputBinding:
    prefix: -amino
- id: feat
  doc: '[ures]=exon,CDS...   extract sequence of selected features'
  type: boolean
  inputBinding:
    prefix: -feat
- id: no_feat
  doc: '[ures]=repeat_region,intron... remove sequence of selected features '
  type: boolean
  inputBinding:
    prefix: -nofeat
- id: field
  doc: ',ID...      include selected document fields in output'
  type: string
  inputBinding:
    prefix: -field
- id: no_field
  doc: ',... remove selected document fields from output '
  type: string
  inputBinding:
    prefix: -nofield
- id: extract
  doc: =1000..9999  * extract all features, sequence from given base range
  type: boolean
  inputBinding:
    prefix: -extract
- id: subrange
  doc: =-1000..10  * extract subrange of sequence for feature locations
  type: boolean
  inputBinding:
    prefix: -subrange
- id: subrange
  doc: '=1..end      '
  type: boolean
  inputBinding:
    prefix: -subrange
- id: subrange
  doc: '+99  '
  type: string
  inputBinding:
    prefix: -subrange
- id: pair
  doc: =1              * combine features (fff,gff) and sequence files to one output
  type: boolean
  inputBinding:
    prefix: -pair
- id: un_pair
  doc: =1            * split features,sequence from one input to two files
  type: boolean
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
outputs: []
cwlVersion: v1.1
baseCommand:
- readseq
