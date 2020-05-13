class: CommandLineTool
id: act.cwl
inputs:
- id: sequence
  doc: An EMBL, GenBank, FASTA, or GFF3 file
  type: string
  inputBinding:
    position: 0
- id: feature
  doc: An Artemis TAB file, or GFF file
  type: string
  inputBinding:
    position: 1
- id: comparison
  doc: A BLAST comparison file in tabular format
  type: string
  inputBinding:
    position: 2
- id: options
  doc: Read a text file of options from FILE
  type: File
  inputBinding:
    prefix: -options
- id: chado
  doc: Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment
    variables)
  type: boolean
  inputBinding:
    prefix: -chado
- id: d_black_belt_mode
  doc: =?         Keep warning messages to a minimum [true,false]
  type: boolean
  inputBinding:
    prefix: -Dblack_belt_mode
- id: d_user_plot_x
  doc: For sequence 'X' open one or more userplots
  type:
  - File
  inputBinding:
    prefix: -DuserplotX
- id: dlog_user_plot_x
  doc: For sequence 'X' open one or more userplots, take log(data)
  type:
  - File
  inputBinding:
    prefix: -DloguserplotX
- id: dba_mx
  doc: "[,FILE2,...]     For sequence 'X' open one or more BAM, CRAM, VCF, or BCF\
    \ files"
  type: File
  inputBinding:
    prefix: -DbamX
- id: dcha_do
  doc: ="h:p/d?u"           Get ACT to open this CHADO database
  type: boolean
  inputBinding:
    prefix: -Dchado
- id: dread_only
  doc: Open CHADO database read-only
  type: boolean
  inputBinding:
    prefix: -Dread_only
outputs: []
cwlVersion: v1.1
baseCommand:
- act
