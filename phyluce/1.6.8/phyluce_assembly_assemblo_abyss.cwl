class: CommandLineTool
id: phyluce_assembly_assemblo_abyss.cwl
inputs:
- id: output
  doc: The directory in which to store the assembly data
  type: string
  inputBinding:
    prefix: --output
- id: km_er
  doc: The kmer value to use
  type: string
  inputBinding:
    prefix: --kmer
- id: cores
  doc: The number of compute cores/threads to run with Trinity
  type: string
  inputBinding:
    prefix: --cores
- id: subfolder
  doc: A subdirectory, below the level of the group, containing the reads
  type: string
  inputBinding:
    prefix: --subfolder
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: clean
  doc: Cleanup all intermediate Trinity files
  type: boolean
  inputBinding:
    prefix: --clean
- id: abyss_se
  doc: Only use abyss-se
  type: boolean
  inputBinding:
    prefix: --abyss-se
- id: config
  doc: A configuration file containing reads to assemble
  type: string
  inputBinding:
    prefix: --config
- id: dir
  doc: A directory of reads to assemble
  type: string
  inputBinding:
    prefix: --dir
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_assemblo_abyss
