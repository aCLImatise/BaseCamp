class: CommandLineTool
id: netClass.cwl
inputs:
- id: in_t_new_r
  doc: "- Dir of chrN.out.spec files, with RepeatMasker .out format\nlines describing\
    \ lineage specific repeats in target"
  type: string
  inputBinding:
    prefix: -tNewR
- id: in_q_new_r
  doc: '- Dir of chrN.out.spec files for query'
  type: string
  inputBinding:
    prefix: -qNewR
- id: in_no_ar
  doc: "- Don't look for ancient repeats"
  type: boolean
  inputBinding:
    prefix: -noAr
- id: in_q_repeats
  doc: '- table name for query repeats in place of rmsk'
  type: string
  inputBinding:
    prefix: -qRepeats
- id: in_t_repeats
  doc: "- table name for target repeats in place of rmsk\n- for example: -tRepeats=windowmaskerSdust"
  type: string
  inputBinding:
    prefix: -tRepeats
- id: in_lift_q
  doc: "- Lift in.net's query coords to chrom-level using\nfile.lft (for accessing\
    \ chrom-level coords in qDb)"
  type: File
  inputBinding:
    prefix: -liftQ
- id: in_lift_t
  doc: "- Lift in.net's target coords to chrom-level using\nfile.lft (for accessing\
    \ chrom-level coords in tDb)\n"
  type: File
  inputBinding:
    prefix: -liftT
- id: in_in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tdb
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_qdb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- netClass
