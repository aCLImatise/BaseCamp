class: CommandLineTool
id: peakranger_bcp.cwl
inputs:
- id: in_arg_data_file
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_control_file
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_format
  doc: "the format of the data file, can be one of :\nbowtie, sam, bam and bed"
  type: File
  inputBinding:
    prefix: --format
- id: in_arg_output_location
  doc: '[ --output ] arg             the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_generate_html_reports
  doc: generate html reports
  type: boolean
  inputBinding:
    prefix: --report
- id: in_plot_region
  doc: (=6000)       the length of the snapshort regions in the
  type: long
  inputBinding:
    prefix: --plot_region
- id: in_arg_p_value
  doc: '[ --pval ] arg (=0.0001)     p value cut-off'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_win_size
  doc: (=500)           sliding window size
  type: long
  inputBinding:
    prefix: --win_size
- id: in_arg_read_length
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in__geneannotfile_arg
  doc: --gene_annot_file arg           the gene annotation file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakranger
- bcp
