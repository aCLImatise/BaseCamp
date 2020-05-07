class: CommandLineTool
id: art.cwl
inputs:
- id: sequence_file
  doc: An EMBL, GenBank, FASTA, or GFF3 file
  type: string
  inputBinding:
    position: 0
- id: feature_file
  doc: An Artemis TAB file, or GFF file
  type: string
  inputBinding:
    position: 1
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
  doc: =?            Keep warning messages to a minimum [true,false]
  type: boolean
  inputBinding:
    prefix: -Dblack_belt_mode
- id: d_offset
  doc: Open viewer at base position XXX [integer >= 1]
  type: string
  inputBinding:
    prefix: -Doffset
- id: d_user_plot
  doc: Open one or more userplots
  type:
  - File
  inputBinding:
    prefix: -Duserplot
- id: dlog_user_plot
  doc: Open one or more userplots, take log(data)
  type:
  - File
  inputBinding:
    prefix: -Dloguserplot
- id: db_am
  doc: '[,FILE2,...]         Open one or more BAM, CRAM, VCF or BCF files'
  type: File
  inputBinding:
    prefix: -Dbam
- id: db_am_clone
  doc: Open all BAM, CRAM, VCF or BCF files in multiple (n > 1) panels
  type: string
  inputBinding:
    prefix: -DbamClone
- id: db_am
  doc: '[1,2,..]=FILE[,FILE2,..]  Open BAM, CRAM, VCF or BCF files in separate panels'
  type: boolean
  inputBinding:
    prefix: -Dbam
- id: d_show_snps
  doc: Show SNP marks in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_snps
- id: d_show_snp_plot
  doc: Open SNP plot in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_snp_plot
- id: d_show_cov_plot
  doc: Open coverage plot in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_cov_plot
- id: d_show_forward_lines
  doc: =?         Hide/show forward frame lines [true,false]
  type: boolean
  inputBinding:
    prefix: -Dshow_forward_lines
- id: d_show_reverse_lines
  doc: =?         Hide/show reverse frame lines [true,false]
  type: boolean
  inputBinding:
    prefix: -Dshow_reverse_lines
- id: dcha_do
  doc: ="h:p/d?u"              Get Artemis to open this CHADO database
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
- art
