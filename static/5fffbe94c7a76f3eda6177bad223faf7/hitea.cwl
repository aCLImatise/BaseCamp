class: CommandLineTool
id: hitea.cwl
inputs:
- id: i
  doc: ':          Input file in pairsam format or unsorted-lossless bam format'
  type: string
  inputBinding:
    prefix: -i
- id: e
  doc: ":          Restriction endunuclease used for the assay (default: '', available:MboI,DpnII,HindIII,Arima,NcoI,NotI)"
  type: string
  inputBinding:
    prefix: -e
- id: g
  doc: ':          Genome build to be used (default:hg38, available: hg19)'
  type: string
  inputBinding:
    prefix: -g
- id: n
  doc: ':           fasta format file for TE-consensus sequences'
  type: string
  inputBinding:
    prefix: -n
- id: b
  doc: ':         fasta format file for Repbase subfamily sequences'
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: ':          fasta format file for Polymorphic sequences (header should be Family~name
    format'
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: ':            reference-genome copies for TE-family members'
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ':       Output prefix while generating report files (default: project)'
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: ':          Working directory where the files are to be written'
  type: string
  inputBinding:
    prefix: -w
- id: q
  doc: ':     Mapping quality threshold for repeat anchored mate on the reference
    genome (default: 28)'
  type: string
  inputBinding:
    prefix: -q
- id: s
  doc: ':            Minimum clip length for detecting insertion (should be >=13bp)
    (default: 20) '
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: ':           whether to remap unmapped clipped reads to the polymoprhic sequences
    (default:F)'
  type: string
  inputBinding:
    prefix: -r
- id: x
  doc: ':             whether the file is a WGS experiment (default:F)'
  type: string
  inputBinding:
    prefix: -x
- id: h
  doc: ':            Display help message'
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- hitea
