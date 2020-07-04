class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BASIC.py.cwl
inputs:
- id: type_receptor_choices
  doc: 'Type of receptor. Choices: "BCR" or "TCR" (default: BCR)'
  type: string
  inputBinding:
    prefix: -i
- id: launch_p_threads
  doc: 'Launch p > 2 threads that will run on separate processors/cores (default:
    2)'
  type: string
  inputBinding:
    prefix: -p
- id: name_output_file
  doc: 'Name of output file. Note: a ".fasta" extension will be added (default: result.fasta)'
  type: string
  inputBinding:
    prefix: -n
- id: se
  doc: 'Single end FASTQ file (optionally gzipped). (example: se.fastq)'
  type: string
  inputBinding:
    prefix: -SE
- id: pe_one
  doc: 'Paired end (left) FASTQ file (optionally gzipped). -PE_2 is required and pairs
    must match order. (example: pe_1.fastq)'
  type: string
  inputBinding:
    prefix: -PE_1
- id: pe_two
  doc: 'Paired end (right) FASTQ file (optionally gzipped). (example: pe_2.fastq)'
  type: string
  inputBinding:
    prefix: -PE_2
- id: options_default_human
  doc: 'Options: "human" or "mouse" (default: human). Note: other species are possible
    by adding the appropriate Bowtie2 indices and following the existing db/ directory
    structure'
  type: string
  inputBinding:
    prefix: -g
- id: absolute_path_bowtie
  doc: Absolute path to bowtie2 executable or directory containing it
  type: string
  inputBinding:
    prefix: -b
- id: path_directory_writing
  doc: 'Path to directory for writing intermediate files. (default: current working
    directory)'
  type: string
  inputBinding:
    prefix: -t
- id: output_directory_default
  doc: 'Output directory (default: current working directory)'
  type: string
  inputBinding:
    prefix: -o
- id: allow_partial_reconstruction
  doc: Allow for partial reconstruction i.e. do not terminate if one or both chains
    do not assemble.
  type: boolean
  inputBinding:
    prefix: -a
- id: turns_verbosity_more
  doc: Turns on verbosity for more details.
  type: boolean
  inputBinding:
    prefix: -v
- id: path_database_defaults
  doc: Path to database directory. Defaults to <path of BASIC.py>/db
  type: string
  inputBinding:
    prefix: -d
- id: subsample
  doc: 'Use the first <int> number of reads of the input. Default: no limit'
  type: string
  inputBinding:
    prefix: --subsample
outputs: []
cwlVersion: v1.1
baseCommand:
- BASIC.py
