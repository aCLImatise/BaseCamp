class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/peakranger_ccat.cwl
inputs:
- id: arg_data_file
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_control_file
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: format
  doc: 'the format of the data file, can be one of :  bowtie, sam, bam and bed'
  type: string
  inputBinding:
    prefix: --format
- id: arg_output_location
  doc: '[ --output ] arg             the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: report
  doc: generate html reports
  type: boolean
  inputBinding:
    prefix: --report
- id: plot_region
  doc: (=6000)       the length of the snapshort regions in the  report
  type: string
  inputBinding:
    prefix: --plot_region
- id: gene_an_not_file
  doc: the gene annotation file
  type: string
  inputBinding:
    prefix: --gene_annot_file
- id: arg__fdr
  doc: '[ --FDR ] arg (=0.11)        FDR cut-off'
  type: boolean
  inputBinding:
    prefix: -q
- id: win_size
  doc: (=500)           sliding window size
  type: string
  inputBinding:
    prefix: --win_size
- id: win_step
  doc: (=50)            window moving step
  type: string
  inputBinding:
    prefix: --win_step
- id: min_count
  doc: (=4)            minimum window reads count
  type: string
  inputBinding:
    prefix: --min_count
- id: min_score
  doc: (=5)            minimum window reads fold change
  type: string
  inputBinding:
    prefix: --min_score
- id: arg_read_length
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_number_worker
  doc: '[ --thread ] arg (=7)        number of worker threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- ccat
