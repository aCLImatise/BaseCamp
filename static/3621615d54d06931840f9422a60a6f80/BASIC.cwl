class: CommandLineTool
id: BASIC.py.cwl
inputs:
- id: i
  doc: 'Type of receptor. Choices: "BCR" or "TCR" (default: BCR)'
  type: string
  inputBinding:
    prefix: -i
- id: p
  doc: 'Launch p > 2 threads that will run on separate processors/cores (default:
    2)'
  type: string
  inputBinding:
    prefix: -p
- id: n
  doc: 'Name of output file. Note: a ".fasta" extension will be added (default: result.fasta)'
  type: string
  inputBinding:
    prefix: -n
- id: se
  doc: 'Single end FASTQ file (optionally gzipped). (example: se.fastq)'
  type: string
  inputBinding:
    prefix: -SE
- id: pe_1
  doc: 'Paired end (left) FASTQ file (optionally gzipped). -PE_2 is required and pairs
    must match order. (example: pe_1.fastq)'
  type: string
  inputBinding:
    prefix: -PE_1
- id: pe_2
  doc: 'Paired end (right) FASTQ file (optionally gzipped). (example: pe_2.fastq)'
  type: string
  inputBinding:
    prefix: -PE_2
- id: g
  doc: 'Options: "human" or "mouse" (default: human). Note: other species are possible
    by adding the appropriate Bowtie2 indices and following the existing db/ directory
    structure'
  type: string
  inputBinding:
    prefix: -g
- id: b
  doc: Absolute path to bowtie2 executable or directory containing it
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: 'Path to directory for writing intermediate files. (default: current working
    directory)'
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: 'Output directory (default: current working directory)'
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: Allow for partial reconstruction i.e. do not terminate if one or both chains
    do not assemble.
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: Turns on verbosity for more details.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
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
