class: CommandLineTool
id: ../../../runReadsMapping.pl.cwl
inputs:
- id: referencefasta
  doc: '<reference_fasta> '
  type: boolean
  inputBinding:
    prefix: -r
- id: querydir_contains_reads
  doc: <query_dir> , contains reads files in the format *R[1-2].fastq, if paired,
    elase *.fastq
  type: boolean
  inputBinding:
    prefix: -q
- id: provided_will_write
  doc: <output_directory>, if not provided will write files in current directory
  type: boolean
  inputBinding:
    prefix: -d
- id: _of_threads
  doc: '<# of threads> '
  type: boolean
  inputBinding:
    prefix: -t
- id: list_file
  doc: <list file>
  type: boolean
  inputBinding:
    prefix: -l
- id: aligner_bwabowtie
  doc: <aligner bwa|bowtie>
  type: boolean
  inputBinding:
    prefix: -a
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- runReadsMapping.pl
