class: CommandLineTool
id: methylpy_build_reference.cwl
inputs:
- id: input_files
  doc: 'List of genome fasta files to build a reference from. (default: None)'
  type: string[]
  inputBinding:
    prefix: --input-files
- id: output_prefix
  doc: 'the prefix of the two output reference files that will be created. (default:
    None)'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: aligner
  doc: 'Aligner to use. Currently, methylpy supports bowtie, bowtie2 and minimap2.
    (default: bowtie2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: path_to_aligner
  doc: 'Path to bowtie/bowtie2 installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: buff_size
  doc: 'The number of bytes that will be read in from the reference at once. (default:
    100)'
  type: string
  inputBinding:
    prefix: --buffsize
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- build-reference
