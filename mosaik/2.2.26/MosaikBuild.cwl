class: CommandLineTool
id: MosaikBuild.cwl
inputs:
- id: fr
  doc: the FASTA reference sequences file
  type: string
  inputBinding:
    prefix: -fr
- id: ga
  doc: the genome assembly ID. e.g. HG18
  type: string
  inputBinding:
    prefix: -ga
- id: oa
  doc: the output reference file
  type: string
  inputBinding:
    prefix: -oa
- id: sn
  doc: the species name. e.g. "Homo sapiens"
  type: string
  inputBinding:
    prefix: -sn
- id: uri
  doc: the URI (e.g. URL or URN)
  type: string
  inputBinding:
    prefix: -uri
- id: fq
  doc: the FASTA base qualities file
  type: string
  inputBinding:
    prefix: -fq
- id: fr2
  doc: the FASTA 2nd mate
  type: string
  inputBinding:
    prefix: -fr2
- id: fq2
  doc: the FASTA BQ 2nd mate
  type: string
  inputBinding:
    prefix: -fq2
- id: assign_qual
  doc: assigns a quality for each base
  type: string
  inputBinding:
    prefix: -assignQual
- id: q2
  doc: the FASTQ 2nd mate
  type: string
  inputBinding:
    prefix: -q2
- id: il
  doc: the desired lanes e.g 5678 for lanes 5-8
  type: string
  inputBinding:
    prefix: -il
- id: split
  doc: splits the read into two mates
  type: boolean
  inputBinding:
    prefix: -split
- id: il
  doc: the desired lanes e.g 5678 for lanes 5-8
  type: string
  inputBinding:
    prefix: -il
- id: ds
  doc: read group description
  type: string
  inputBinding:
    prefix: -ds
- id: id
  doc: read group ID. e.g. SRR009060
  type: string
  inputBinding:
    prefix: -id
- id: ln
  doc: library name. e.g. g1k-sc-NA18944-JPT-1
  type: string
  inputBinding:
    prefix: -ln
- id: mfl
  doc: median fragment length. e.g. 150
  type: string
  inputBinding:
    prefix: -mfl
- id: pu
  doc: <run name & lane>             the platform unit. e.g. IL12_490_5
  type: boolean
  inputBinding:
    prefix: -pu
- id: sam
  doc: sample name. e.g. NA12878
  type: string
  inputBinding:
    prefix: -sam
- id: st
  doc: "sets the sequencing technology: '454', 'helicos', 'illumina', 'illumina_long',\
    \ 'sanger' or 'solid'"
  type: string
  inputBinding:
    prefix: -st
- id: tp
  doc: '<# of beginning bases>        trims the first # of bases'
  type: boolean
  inputBinding:
    prefix: -tp
- id: ts
  doc: '<# of end bases>              trims the last # of bases'
  type: boolean
  inputBinding:
    prefix: -ts
outputs: []
cwlVersion: v1.1
baseCommand:
- MosaikBuild
