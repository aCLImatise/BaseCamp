class: CommandLineTool
id: runReadsMapping.pl.cwl
inputs:
- id: r
  doc: '<reference_fasta> '
  type: boolean
  inputBinding:
    prefix: -r
- id: q
  doc: <query_dir> , contains reads files in the format *R[1-2].fastq, if paired,
    elase *.fastq
  type: boolean
  inputBinding:
    prefix: -q
- id: d
  doc: <output_directory>, if not provided will write files in current directory
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: '<# of threads> '
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: <list file>
  type: boolean
  inputBinding:
    prefix: -l
- id: a
  doc: <aligner bwa|bowtie>
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- runReadsMapping.pl
