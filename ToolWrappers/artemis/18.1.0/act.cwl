class: CommandLineTool
id: act.cwl
inputs:
- id: in_options
  doc: Read a text file of options from FILE
  type: File?
  inputBinding:
    prefix: -options
- id: in_chado
  doc: Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment
    variables)
  type: boolean?
  inputBinding:
    prefix: -chado
- id: in_d_black_belt_mode
  doc: =?         Keep warning messages to a minimum [true,false]
  type: boolean?
  inputBinding:
    prefix: -Dblack_belt_mode
- id: in_d_user_plot_x
  doc: For sequence 'X' open one or more userplots
  type: File?
  inputBinding:
    prefix: -DuserplotX
- id: in_dlog_user_plot_x
  doc: For sequence 'X' open one or more userplots, take log(data)
  type: File?
  inputBinding:
    prefix: -DloguserplotX
- id: in_dba_mx
  doc: "[,FILE2,...]     For sequence 'X' open one or more BAM, CRAM, VCF, or BCF\
    \ files"
  type: File?
  inputBinding:
    prefix: -DbamX
- id: in_dcha_do
  doc: ="h:p/d?u"           Get ACT to open this CHADO database
  type: boolean?
  inputBinding:
    prefix: -Dchado
- id: in_dread_only
  doc: Open CHADO database read-only
  type: boolean?
  inputBinding:
    prefix: -Dread_only
- id: in_sequence
  doc: An EMBL, GenBank, FASTA, or GFF3 file
  type: string
  inputBinding:
    position: 0
- id: in_feature
  doc: An Artemis TAB file, or GFF file
  type: string
  inputBinding:
    position: 1
- id: in_comparison
  doc: A BLAST comparison file in tabular format
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- act
