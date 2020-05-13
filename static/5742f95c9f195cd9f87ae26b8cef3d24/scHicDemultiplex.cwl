class: CommandLineTool
id: scHicDemultiplex.cwl
inputs:
- id: fast_q
  doc: "of fastq files to demultiplex [list of fastq files to demultiplex ...], -f\
    \ list of fastq files to demultiplex [list of fastq files to demultiplex ...]\
    \ The fastq files to demultiplex of Nagano 2017 Cell cycle dynamics of chromosomal\
    \ organization at single- cell resolutionGEO: GSE94489. Files need to have four\
    \ FASTQ lines per read:/1 forward; /2 barcode forward; /3 bardcode reverse; /4\
    \ reverse read.Please be aware the files can be downloaded via the command fastq-dump\
    \ to be in the right format:fastq-dump --accession SRR5229025 --split-files --defline-seq\
    \ '@$sn[_$rn]/$ri' --defline-qual '+' --split-spot --stdout SRR5229025 > SRR5229025.fastq\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --fastq
- id: barcode_file
  doc: 'of fastq files to demultiplex. Use GSE94489_README.txt file., -bf list of
    fastq files to demultiplex. Use GSE94489_README.txt file. The fastq files to demultiplex
    (default: None)'
  type: string
  inputBinding:
    prefix: --barcodeFile
- id: srr_to_sample_file
  doc: 'The mappings from SRR number to sample id as given in the barcode file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --srrToSampleFile
- id: output_folder
  doc: 'Path of folder to save the demultiplexed files (default: demultiplexed)'
  type: Directory
  inputBinding:
    prefix: --outputFolder
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: buffer_size
  doc: 'Number of lines to buffer in memory, if full, write the data to disk. (default:
    20000000.0)'
  type: string
  inputBinding:
    prefix: --bufferSize
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicDemultiplex
