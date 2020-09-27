class: CommandLineTool
id: Aquila_stLFR_step2.cwl
inputs:
- id: in_chr_start
  doc: chromosome start from, default = 1
  type: long
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by, default = 23
  type: long
  inputBinding:
    prefix: --chr_end
- id: in_out_dir
  doc: "Required parameter; Directory to store assembly\nresults"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_reference
  doc: "Required parameter; reference fasta file, run\n./install to download it"
  type: File
  inputBinding:
    prefix: --reference
- id: in_num_threads
  doc: "number of threads, default = 30, this correponds to\nnumber of small files\
    \ get assembled simulateoulsy"
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_num_threads_spades
  doc: number of threads for spades, default = 5
  type: long
  inputBinding:
    prefix: --num_threads_spades
- id: in_block_len_use
  doc: "phase block len threshold, default = 100000\n"
  type: long
  inputBinding:
    prefix: --block_len_use
- id: in_x_zhou_one_five_atcs_dot_stanford_dot_edu
  doc: 'optional arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_step2
