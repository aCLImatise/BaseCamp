class: CommandLineTool
id: MosaikBuild.cwl
inputs:
- id: in_fr
  doc: the FASTA reference sequences file
  type: File
  inputBinding:
    prefix: -fr
- id: in_ga
  doc: the genome assembly ID. e.g. HG18
  type: long
  inputBinding:
    prefix: -ga
- id: in_oa
  doc: the output reference file
  type: File
  inputBinding:
    prefix: -oa
- id: in_sn
  doc: the species name. e.g. "Homo sapiens"
  type: string
  inputBinding:
    prefix: -sn
- id: in_uri
  doc: the URI (e.g. URL or URN)
  type: string
  inputBinding:
    prefix: -uri
- id: in_fq
  doc: the FASTA base qualities file
  type: File
  inputBinding:
    prefix: -fq
- id: in_fr_two
  doc: the FASTA 2nd mate
  type: File
  inputBinding:
    prefix: -fr2
- id: in_fq_two
  doc: the FASTA BQ 2nd mate
  type: File
  inputBinding:
    prefix: -fq2
- id: in_assign_qual
  doc: assigns a quality for each base
  type: string
  inputBinding:
    prefix: -assignQual
- id: in_q_two
  doc: the FASTQ 2nd mate
  type: File
  inputBinding:
    prefix: -q2
- id: in_il
  doc: the desired lanes e.g 5678 for lanes 5-8
  type: long
  inputBinding:
    prefix: -il
- id: in_split
  doc: splits the read into two mates
  type: boolean
  inputBinding:
    prefix: -split
- id: in_ds
  doc: read group description
  type: string
  inputBinding:
    prefix: -ds
- id: in_id
  doc: read group ID. e.g. SRR009060
  type: long
  inputBinding:
    prefix: -id
- id: in_ln
  doc: library name. e.g. g1k-sc-NA18944-JPT-1
  type: long
  inputBinding:
    prefix: -ln
- id: in_mfl
  doc: median fragment length. e.g. 150
  type: long
  inputBinding:
    prefix: -mfl
- id: in_pu
  doc: <run name & lane>             the platform unit. e.g. IL12_490_5
  type: boolean
  inputBinding:
    prefix: -pu
- id: in_sam
  doc: sample name. e.g. NA12878
  type: long
  inputBinding:
    prefix: -sam
- id: in_st
  doc: "sets the sequencing technology: '454',\n'helicos', 'illumina', 'illumina_long',\n\
    'sanger' or 'solid'"
  type: long
  inputBinding:
    prefix: -st
- id: in_tp
  doc: '<# of beginning bases>        trims the first # of bases'
  type: boolean
  inputBinding:
    prefix: -tp
- id: in_ts
  doc: '<# of end bases>              trims the last # of bases'
  type: boolean
  inputBinding:
    prefix: -ts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oa
  doc: the output reference file
  type: File
  outputBinding:
    glob: $(inputs.in_oa)
cwlVersion: v1.1
baseCommand:
- MosaikBuild
