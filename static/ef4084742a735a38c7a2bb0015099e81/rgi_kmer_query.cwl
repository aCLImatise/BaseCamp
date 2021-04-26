class: CommandLineTool
id: rgi_kmer_query.cwl
inputs:
- id: in_input
  doc: "Input file (bam file from RGI*BWT, json file of RGI\nresults, fasta file of\
    \ sequences)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_bwt
  doc: "Specify if the input file for analysis is a bam file\ngenerated from RGI*BWT"
  type: boolean?
  inputBinding:
    prefix: --bwt
- id: in_specify_is_rgi
  doc: Specify if the input file is a RGI results json file
  type: boolean?
  inputBinding:
    prefix: --rgi
- id: in_fast_a
  doc: Specify if the input file is a fasta file of sequences
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_km_er_size
  doc: length of k
  type: long?
  inputBinding:
    prefix: --kmer_size
- id: in_minimum
  doc: "Minimum number of kmers in the called category for the\nclassification to\
    \ be made (default=10)."
  type: long?
  inputBinding:
    prefix: --minimum
- id: in_threads
  doc: number of threads (CPUs) to use (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: --output
- id: in_local
  doc: "use local database (default: uses database in\nexecutable directory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- rgi
- kmer_query
