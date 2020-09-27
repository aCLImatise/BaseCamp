class: CommandLineTool
id: metawrap_quant_bins.cwl
inputs:
- id: in_folder_containing_bins
  doc: folder containing draft genomes (bins) in fasta format
  type: Directory
  inputBinding:
    prefix: -b
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_fasta_file_entire
  doc: fasta file with entire metagenomic assembly (strongly recommended!)
  type: File
  inputBinding:
    prefix: -a
- id: in_number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
- id: in_reads_x_one_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_reads_x_two_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metawrap
- quant_bins
