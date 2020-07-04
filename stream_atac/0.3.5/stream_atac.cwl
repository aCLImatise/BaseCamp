class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/stream_atac.cwl
inputs:
- id: file_count
  doc: 'scATAC-seq counts file name (default: None)'
  type: File
  inputBinding:
    prefix: --file_count
- id: file_region
  doc: 'scATAC-seq regions file name in .bed or .bed.gz format (default: None)'
  type: File
  inputBinding:
    prefix: --file_region
- id: file_sample
  doc: 'scATAC-seq samples file name (default: None)'
  type: File
  inputBinding:
    prefix: --file_sample
- id: genome
  doc: "Reference genome. Choose from {{'mm9', 'mm10', 'hg38', 'hg19'}} (default:\
    \ hg19)"
  type: string
  inputBinding:
    prefix: --genome
- id: feature
  doc: "Features used to have the analysis. Choose from {{'kmer', 'motif'}} (default:\
    \ kmer)"
  type: string
  inputBinding:
    prefix: --feature
- id: kmer_length_scatacseq
  doc: 'k-mer length for scATAC-seq analysis (default: 7)'
  type: string
  inputBinding:
    prefix: -k
- id: resize_peak
  doc: 'Resize peaks when peaks have different widths. (default: False)'
  type: boolean
  inputBinding:
    prefix: --resize_peak
- id: peak_width
  doc: 'Specify the width of peak when resizing them. Only valid when resize_peak
    is True. (default: 450)'
  type: string
  inputBinding:
    prefix: --peak_width
- id: n_jobs
  doc: 'The number of parallel jobs to run. (default,1) (default: 1)'
  type: string
  inputBinding:
    prefix: --n_jobs
- id: file_format
  doc: "File format of file_count. Currently supported file formats: 'tsv','txt','csv','mtx'.\
    \ (default: tsv)"
  type: File
  inputBinding:
    prefix: --file_format
- id: output_folder
  doc: 'Output folder (default: None)'
  type: string
  inputBinding:
    prefix: --output_folder
outputs: []
cwlVersion: v1.1
baseCommand:
- stream_atac
