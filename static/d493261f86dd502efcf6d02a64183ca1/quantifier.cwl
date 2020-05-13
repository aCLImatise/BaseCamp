class: CommandLineTool
id: quantifier.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: quantifier_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: timestamp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pdfs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sort
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: stringent
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: mismatches
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: vs
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: precursor
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: mappings
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: u
  doc: list all values allowed for the species parameter that have an entry at UCSC
  type: boolean
  inputBinding:
    prefix: -u
- id: p
  doc: miRNA precursor sequences from miRBase
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: miRNA sequences from miRBase
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: specify this option of your mature miRNA file contains 5p and 3p ids only
  type: boolean
  inputBinding:
    prefix: -P
- id: r
  doc: your read sequences
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: '[file]    config.txt file with different sample ids... or just the one sample
    id  -- deprecated'
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: '[star.fa] optional star sequences from miRBase'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[species] e.g. Mouse or mmu if not searching in a specific species all species
    in your files will be analyzed else only the species in your dataset is considered'
  type: boolean
  inputBinding:
    prefix: -t
- id: y
  doc: '[time]    optional otherwise its generating a new one'
  type: boolean
  inputBinding:
    prefix: -y
- id: d
  doc: if parameter given pdfs will not be generated, otherwise pdfs will be generated
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: if parameter is given reads were not sorted by sample in pdf file, default
    is sorting
  type: boolean
  inputBinding:
    prefix: -o
- id: k
  doc: also considers precursor-mature mappings that have different ids, eg let7c
    would be allowed to map to pre-let7a
  type: boolean
  inputBinding:
    prefix: -k
- id: n
  doc: do not do file conversion again
  type: boolean
  inputBinding:
    prefix: -n
- id: x
  doc: do not do mapping against precursor again
  type: boolean
  inputBinding:
    prefix: -x
- id: g
  doc: '[int]     number of allowed mismatches when mapping reads to precursors, default
    1'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: '[int]     number of nucleotides upstream of the mature sequence to consider,
    default 2'
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: '[int]     number of nucleotides downstream of the mature sequence to consider,
    default 5'
  type: boolean
  inputBinding:
    prefix: -f
- id: j
  doc: do not create an output.mrd file and pdfs if specified
  type: boolean
  inputBinding:
    prefix: -j
- id: w
  doc: considers the whole precursor as the 'mature sequence'
  type: boolean
  inputBinding:
    prefix: -w
- id: w
  doc: read counts are weighed by their number of mappings. e.g. A read maps twice
    so each position gets 0.5 added to its read profile
  type: boolean
  inputBinding:
    prefix: -W
- id: u
  doc: 'use only unique read mappings; Caveat: Some miRNAs have multiple precursors.
    These will be underestimated in their expression since the multimappers are excluded'
  type: boolean
  inputBinding:
    prefix: -U
outputs: []
cwlVersion: v1.1
baseCommand:
- quantifier.pl
