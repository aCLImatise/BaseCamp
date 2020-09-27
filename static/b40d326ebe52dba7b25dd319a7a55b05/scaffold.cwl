class: CommandLineTool
id: scaffold.cwl
inputs:
- id: in_out
  doc: (=out)                   output directory
  type: Directory
  inputBinding:
    prefix: --out
- id: in_num_threads
  doc: (=0)             number of threads
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_seed_km_er
  doc: (=30)              seed kmer size for alignment
  type: long
  inputBinding:
    prefix: --seed_kmer
- id: in_min_contig
  doc: (=200)            min size of contig
  type: long
  inputBinding:
    prefix: --min_contig
- id: in_similar
  doc: (=0.95)              similarity for alignment
  type: double
  inputBinding:
    prefix: --similar
- id: in_min_pairs
  doc: (=3)               minimum number of pairs
  type: long
  inputBinding:
    prefix: --min_pairs
- id: in_reads_lib_one_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_reads_lib_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: (=out)                   output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- scaffold
