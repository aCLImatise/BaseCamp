class: CommandLineTool
id: stream_atac.cwl
inputs:
- id: in_file_count
  doc: 'scATAC-seq counts file name (default: None)'
  type: File
  inputBinding:
    prefix: --file_count
- id: in_file_region
  doc: "scATAC-seq regions file name in .bed or .bed.gz format\n(default: None)"
  type: File
  inputBinding:
    prefix: --file_region
- id: in_file_sample
  doc: 'scATAC-seq samples file name (default: None)'
  type: File
  inputBinding:
    prefix: --file_sample
- id: in_genome
  doc: "Reference genome. Choose from {{'mm9', 'mm10', 'hg38',\n'hg19'}} (default:\
    \ hg19)"
  type: long
  inputBinding:
    prefix: --genome
- id: in_feature
  doc: "Features used to have the analysis. Choose from\n{{'kmer', 'motif'}} (default:\
    \ kmer)"
  type: string
  inputBinding:
    prefix: --feature
- id: in_kmer_length_scatacseq
  doc: 'k-mer length for scATAC-seq analysis (default: 7)'
  type: long
  inputBinding:
    prefix: -k
- id: in_resize_peak
  doc: "Resize peaks when peaks have different widths.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --resize_peak
- id: in_peak_width
  doc: "Specify the width of peak when resizing them. Only\nvalid when resize_peak\
    \ is True. (default: 450)"
  type: long
  inputBinding:
    prefix: --peak_width
- id: in_n_jobs
  doc: "The number of parallel jobs to run. (default,1)\n(default: 1)"
  type: long
  inputBinding:
    prefix: --n_jobs
- id: in_file_format
  doc: "File format of file_count. Currently supported file\nformats: 'tsv','txt','csv','mtx'.\
    \ (default: tsv)"
  type: File
  inputBinding:
    prefix: --file_format
- id: in_output_folder
  doc: "Output folder (default: None)\n"
  type: Directory
  inputBinding:
    prefix: --output_folder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Output folder (default: None)\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- stream_atac
