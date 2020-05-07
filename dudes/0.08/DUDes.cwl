class: CommandLineTool
id: DUDes.py.cwl
inputs:
- id: s
  doc: Alignment/mapping file in SAM format. DUDes does not depend on any specific
    read mapper, but it requires header information (@SQ SN:gi|556555098|ref|NC_022650.1|
    LN:55956) and mismatch information (check -i)
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: Database file (output from DUDesDB [.npz])
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: "SAM file format ['nm': sam file with standard cigar string plus NM flag (NM:i:[0-9]*)\
    \ for mismatches count | 'ex': just the extended cigar string]. Default: 'nm'"
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: '# of threads. Default: 1'
  type: string
  inputBinding:
    prefix: -t
- id: x
  doc: 'Taxonomic Id used to start the analysis (1 = root). Default: 1'
  type: string
  inputBinding:
    prefix: -x
- id: m
  doc: 'Keep reads up to this number/percentile of matches (0: off / 0-1: percentile
    / >=1: match count). Default: 0'
  type: long
  inputBinding:
    prefix: -m
- id: a
  doc: 'Minimum number/percentage of supporting matches to consider the reference
    (0: off / 0-1: percentage / >=1: read number). Default: 0.001'
  type: long
  inputBinding:
    prefix: -a
- id: l
  doc: "Last considered rank [superkingdom,phylum,class,order, family,genus,species,strain].\
    \ Default: 'species'"
  type: string
  inputBinding:
    prefix: -l
- id: b
  doc: 'Bin size (0-1: percentile from the lengths of all references in the database
    / >=1: bp). Default: 0.25'
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: 'Output prefix. Default: STDOUT'
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: show program's version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- DUDes.py
