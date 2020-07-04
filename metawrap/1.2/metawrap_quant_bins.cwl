class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metawrap_quant_bins.cwl
inputs:
- id: folder_containing_bins
  doc: folder containing draft genomes (bins) in fasta format
  type: string
  inputBinding:
    prefix: -b
- id: output_directory
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: fasta_file_entire
  doc: fasta file with entire metagenomic assembly (strongly recommended!)
  type: string
  inputBinding:
    prefix: -a
- id: number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
- id: reads_x_one_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads_x_two_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- metawrap
- quant_bins
