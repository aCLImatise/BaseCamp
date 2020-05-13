class: CommandLineTool
id: sortgrcd.cwl
inputs:
- id: cn
  doc: ':    Minimum % of coverage (0-100)'
  type: boolean
  inputBinding:
    prefix: -CN
- id: en
  doc: ':    Report only the best (N=1) or all (N=2) results per gene locus (1)'
  type: boolean
  inputBinding:
    prefix: -EN
- id: fn
  doc: ':    Filter Level (0 -> 3: no -> stringent)'
  type: boolean
  inputBinding:
    prefix: -FN
- id: gn
  doc: ':    Genetic code (0: universal)'
  type: boolean
  inputBinding:
    prefix: -GN
- id: hn
  doc: ':    Minimum spaln score'
  type: boolean
  inputBinding:
    prefix: -HN
- id: jn
  doc: ':    Minimum ORF length (300)'
  type: boolean
  inputBinding:
    prefix: -JN
- id: mn
  doc: ':    Maximum total number of missmatches'
  type: boolean
  inputBinding:
    prefix: -MN
- id: nn
  doc: ':    Maximum total number of non-canonical boundaries'
  type: boolean
  inputBinding:
    prefix: -NN
- id: on
  doc: ':    Output format. 0:Gff3, 3:BED, 4:Native, 5:Intron,  6:cDNA, 7:translate,
    8:CDS, 15:unique intron'
  type: boolean
  inputBinding:
    prefix: -ON
- id: pn
  doc: ':    Minimum Overall % identity (0-100)'
  type: boolean
  inputBinding:
    prefix: -PN
- id: un
  doc: ':    Maximum total number of unpaired bases in gaps'
  type: boolean
  inputBinding:
    prefix: -UN
- id: ln
  doc: ':    Number of residues per line for -O6 or -O7 (60)'
  type: boolean
  inputBinding:
    prefix: -lN
- id: mn
  doc: ':    Maximum allowed missmatches at both exon boundaries'
  type: boolean
  inputBinding:
    prefix: -mN
- id: nn
  doc: ':    allow non-canonical boundary? [0: no; 1: AT-AN; 2: 1bp mismatch; 3: any]'
  type: boolean
  inputBinding:
    prefix: -nN
- id: un
  doc: ':    Maximum allowed unpaired bases in gaps at both exon boundaries'
  type: boolean
  inputBinding:
    prefix: -uN
- id: gs
  doc: ':    Specify the .grp file name'
  type: boolean
  inputBinding:
    prefix: -gS
- id: sa
  doc: ':    sort chromosomes in the alphabetical order of identifier (default)'
  type: boolean
  inputBinding:
    prefix: -Sa
- id: sb
  doc: ':    sort chromosomes in the order of abundance mapped on them'
  type: boolean
  inputBinding:
    prefix: -Sb
- id: sc
  doc: ':    sort chromosomes in the order of apparence in the genome db'
  type: boolean
  inputBinding:
    prefix: -Sc
- id: sr
  doc: ':    sort records mapped on minus strand in the reverse order of genomic positions'
  type: boolean
  inputBinding:
    prefix: -Sr
outputs: []
cwlVersion: v1.1
baseCommand:
- sortgrcd
