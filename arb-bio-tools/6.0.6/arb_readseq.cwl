class: CommandLineTool
id: arb_readseq.cwl
inputs:
- id: a
  doc: '[ll]         select All sequences'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '[aselower]   change to lower case'
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: '[ASEUPPER]   change to UPPER CASE'
  type: boolean
  inputBinding:
    prefix: -C
- id: de_gap
  doc: '[=-]     remove gap symbols'
  type: boolean
  inputBinding:
    prefix: -degap
- id: i
  doc: '[tem=2,3,4]  select Item number(s) from several'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: '[ist]        List sequences only'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '[utput=]out.seq  redirect Output'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '[ipe]        Pipe (command line, <stdin, >stdout)'
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: '[everse]     change to Reverse-complement'
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: '[erbose]     Verbose progress'
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: '[ormat=]#    Format number for output,  or'
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: '[ormat=]Name Format name for output: 1. IG/Stanford           10. Olsen (in-only)  2.
    GenBank/GB            11. Phylip3.2        3. NBRF                  12. Phylip           4.
    EMBL                  13. Plain/Raw        5. GCG                   14. PIR/CODATA       6.
    DNAStrider            15. MSF              7. Fitch                 16. ASN.1            8.
    Pearson/Fasta         17. PAUP/NEXUS       9. Zuker (in-only)       18. Pretty
    (out-only)'
  type: boolean
  inputBinding:
    prefix: -f
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
- arb_readseq
