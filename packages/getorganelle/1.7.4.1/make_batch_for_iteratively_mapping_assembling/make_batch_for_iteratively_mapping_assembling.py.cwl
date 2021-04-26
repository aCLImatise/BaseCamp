class: CommandLineTool
id: make_batch_for_iteratively_mapping_assembling.py.cwl
inputs:
- id: in_input_st_fastq
  doc: Input 1st fastq format file as pool
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_input_nd_fastq
  doc: Input 2nd fastq format file as pool
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_input_fasta_format
  doc: Input fasta format file as initial seed
  type: File?
  inputBinding:
    prefix: -s
- id: in_how_many_iterations
  doc: How many iterations would you like to have? Default=3
  type: long?
  inputBinding:
    prefix: -R
- id: in_theads_used_default
  doc: theads used for bowtie2 and SPAdes. Default=1
  type: long?
  inputBinding:
    prefix: -t
- id: in_spades_kmer_settings
  doc: "SPAdes k-mer settings. Use the same format as in\nSPAdes. Default=21,45,65,85,105"
  type: long?
  inputBinding:
    prefix: -k
- id: in_executable_output_batch
  doc: Executable output batch file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_un
  doc: Try to map and assembly without paired information.
  type: boolean?
  inputBinding:
    prefix: --un
- id: in_random_seed
  doc: 'seed for random generator for bowtie2. Default: 12345'
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_which_bowtie_two
  doc: "Assign the path to Bowtie2 binary files if not added\nto the path. Default:\
    \ try\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
  type: long?
  inputBinding:
    prefix: --which-bowtie2
- id: in_which_spades
  doc: "Assign the path to SPAdes binary files if not added to\nthe path. Default:\
    \ try GetOrganelleDep/linux/SPAdes\nfirst, then $PATH"
  type: File?
  inputBinding:
    prefix: --which-spades
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_executable_output_batch
  doc: Executable output batch file.
  type: File?
  outputBinding:
    glob: $(inputs.in_executable_output_batch)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- make_batch_for_iteratively_mapping_assembling.py
