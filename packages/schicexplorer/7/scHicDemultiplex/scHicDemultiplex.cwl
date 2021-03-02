class: CommandLineTool
id: scHicDemultiplex.cwl
inputs:
- id: in_fastq_files_demultiplex_files
  doc: "of fastq files to demultiplex [list of fastq files to demultiplex ...], -f\
    \ list of fastq files to demultiplex [list of fastq files to demultiplex ...]\n\
    The fastq files to demultiplex of Nagano 2017 Cell\ncycle dynamics of chromosomal\
    \ organization at single-\ncell resolutionGEO: GSE94489. Files need to have four\n\
    FASTQ lines per read:/1 forward; /2 barcode forward;\n/3 bardcode reverse; /4\
    \ reverse read.Please be aware\nthe files can be downloaded via the command fastq-dump\n\
    to be in the right format:fastq-dump --accession\nSRR5229025 --split-files --defline-seq\n\
    '@$sn[_$rn]/$ri' --defline-qual '+' --split-spot\n--stdout SRR5229025 > SRR5229025.fastq\
    \ (default: None)"
  type: long?
  inputBinding:
    prefix: --fastq
- id: in_barcode_file
  doc: "of fastq files to demultiplex. Use GSE94489_README.txt file., -bf list of\
    \ fastq files to demultiplex. Use GSE94489_README.txt file.\nThe fastq files to\
    \ demultiplex (default: None)"
  type: File?
  inputBinding:
    prefix: --barcodeFile
- id: in_srr_to_sample_file
  doc: "The mappings from SRR number to sample id as given in\nthe barcode file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --srrToSampleFile
- id: in_output_folder
  doc: "Path of folder to save the demultiplexed files\n(default: demultiplexed)"
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_buffer_size
  doc: "Number of lines to buffer in memory, if full, write\nthe data to disk. (default:\
    \ 20000000.0)"
  type: long?
  inputBinding:
    prefix: --bufferSize
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_demultiplex
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicDemultiplex
