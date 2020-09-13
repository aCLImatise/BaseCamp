class: CommandLineTool
id: ../../../peakranger_ranger.cwl
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
- id: in_arg_fdr_cutoff
  doc: '[ --FDR ] arg (=0.01)        FDR cut-off'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_arg_read_length
  doc: '[ --ext_length ] arg (=100)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_sensitivity_summit
  doc: '[ --delta ] arg (=1)         sensitivity of the summit detector'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_smoothing_bandwidth
  doc: '[ --bandwidth ] arg (=99)    smoothing bandwidth'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_pad
  doc: "pad read coverage profile to avoid false\npositive summmits"
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_arg_number_worker
  doc: '[ --thread ] arg (=7)        number of worker threads'
  type: boolean
  inputBinding:
    prefix: -t
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
- ranger
