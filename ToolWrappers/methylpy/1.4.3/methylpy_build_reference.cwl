class: CommandLineTool
id: methylpy_build_reference.cwl
inputs:
- id: in_input_files
  doc: "List of genome fasta files to build a reference from.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_output_prefix
  doc: "the prefix of the two output reference files that will\nbe created. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --num-procs
- id: in_aligner
  doc: "Aligner to use. Currently, methylpy supports bowtie,\nbowtie2 and minimap2.\
    \ (default: bowtie2)"
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_path_to_aligner
  doc: 'Path to bowtie/bowtie2 installation (default: )'
  type: File?
  inputBinding:
    prefix: --path-to-aligner
- id: in_buff_size
  doc: "The number of bytes that will be read in from the\nreference at once. (default:\
    \ 100)\n"
  type: long?
  inputBinding:
    prefix: --buffsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- build-reference
