class: CommandLineTool
id: map_back.cwl
inputs:
- id: in_arg_seer_kmer
  doc: '[ --kmers ] arg       seer kmer output file'
  type: File
  inputBinding:
    prefix: -k
- id: in_arg_file_tab
  doc: '[ --references ] arg  file with tab separated reference name and fasta'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: long
  inputBinding:
    prefix: --threads
- id: in_file
  doc: 'Other options:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_seer_kmer
  doc: '[ --kmers ] arg       seer kmer output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_seer_kmer)
cwlVersion: v1.1
baseCommand:
- map_back
