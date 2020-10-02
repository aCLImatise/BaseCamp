class: CommandLineTool
id: create_k_unitigs_large_k.cwl
inputs:
- id: in_mer
  doc: '*k-mer size'
  type: long
  inputBinding:
    prefix: --mer
- id: in_nb_mers
  doc: '*Estimated number of distinct k-mers'
  type: long
  inputBinding:
    prefix: --nb-mers
- id: in_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Ouput file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_quality_threshold
  doc: Count threshold for high-quality mers (2)
  type: long
  inputBinding:
    prefix: --quality-threshold
- id: in_cont_on_low
  doc: Max length of low quality mer run (0)
  type: long
  inputBinding:
    prefix: --cont-on-low
- id: in_min_len
  doc: Minimum length of k-unitig to output (k+1)
  type: long
  inputBinding:
    prefix: --min-len
- id: in_gzip
  doc: Gzip output file. Ignored if -o not given. (false)
  type: File
  inputBinding:
    prefix: --gzip
- id: in_false_positive
  doc: False positive rate in bloom filter (0.01)
  type: double
  inputBinding:
    prefix: --false-positive
- id: in_load
  doc: Load jellyfish bloom counter
  type: File
  inputBinding:
    prefix: --load
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gzip
  doc: Gzip output file. Ignored if -o not given. (false)
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
cwlVersion: v1.1
baseCommand:
- create_k_unitigs_large_k
