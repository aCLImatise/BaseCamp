class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/netClass.cwl
inputs:
- id: t_new_r
  doc: '- Dir of chrN.out.spec files, with RepeatMasker .out format lines describing
    lineage specific repeats in target'
  type: string
  inputBinding:
    prefix: -tNewR
- id: q_new_r
  doc: '- Dir of chrN.out.spec files for query'
  type: string
  inputBinding:
    prefix: -qNewR
- id: no_ar
  doc: "- Don't look for ancient repeats"
  type: boolean
  inputBinding:
    prefix: -noAr
- id: q_repeats
  doc: '- table name for query repeats in place of rmsk'
  type: string
  inputBinding:
    prefix: -qRepeats
- id: t_repeats
  doc: '- table name for target repeats in place of rmsk - for example: -tRepeats=windowmaskerSdust'
  type: string
  inputBinding:
    prefix: -tRepeats
- id: lift_q
  doc: "- Lift in.net's query coords to chrom-level using file.lft (for accessing\
    \ chrom-level coords in qDb)"
  type: File
  inputBinding:
    prefix: -liftQ
- id: lift_t
  doc: "- Lift in.net's target coords to chrom-level using file.lft (for accessing\
    \ chrom-level coords in tDb)"
  type: File
  inputBinding:
    prefix: -liftT
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tdb
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qdb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- netClass
