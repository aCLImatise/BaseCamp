class: CommandLineTool
id: art.cwl
inputs:
- id: in_options
  doc: Read a text file of options from FILE
  type: File
  inputBinding:
    prefix: -options
- id: in_chado
  doc: Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment
    variables)
  type: boolean
  inputBinding:
    prefix: -chado
- id: in_d_black_belt_mode
  doc: =?            Keep warning messages to a minimum [true,false]
  type: boolean
  inputBinding:
    prefix: -Dblack_belt_mode
- id: in_d_offset
  doc: Open viewer at base position XXX [integer >= 1]
  type: long
  inputBinding:
    prefix: -Doffset
- id: in_d_user_plot
  doc: Open one or more userplots
  type:
  - File
  inputBinding:
    prefix: -Duserplot
- id: in_dlog_user_plot
  doc: Open one or more userplots, take log(data)
  type:
  - File
  inputBinding:
    prefix: -Dloguserplot
- id: in_db_am
  doc: '[,FILE2,...]         Open one or more BAM, CRAM, VCF or BCF files'
  type: File
  inputBinding:
    prefix: -Dbam
- id: in_db_am_clone
  doc: Open all BAM, CRAM, VCF or BCF files in multiple (n > 1) panels
  type: long
  inputBinding:
    prefix: -DbamClone
- id: in_d_show_snps
  doc: Show SNP marks in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_snps
- id: in_d_show_snp_plot
  doc: Open SNP plot in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_snp_plot
- id: in_d_show_cov_plot
  doc: Open coverage plot in BamView
  type: boolean
  inputBinding:
    prefix: -Dshow_cov_plot
- id: in_d_show_forward_lines
  doc: =?         Hide/show forward frame lines [true,false]
  type: boolean
  inputBinding:
    prefix: -Dshow_forward_lines
- id: in_d_show_reverse_lines
  doc: =?         Hide/show reverse frame lines [true,false]
  type: boolean
  inputBinding:
    prefix: -Dshow_reverse_lines
- id: in_dcha_do
  doc: ="h:p/d?u"              Get Artemis to open this CHADO database
  type: boolean
  inputBinding:
    prefix: -Dchado
- id: in_dread_only
  doc: Open CHADO database read-only
  type: boolean
  inputBinding:
    prefix: -Dread_only
- id: in_sequence_file
  doc: An EMBL, GenBank, FASTA, or GFF3 file
  type: string
  inputBinding:
    position: 0
- id: in_feature_file
  doc: An Artemis TAB file, or GFF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- art
