class: CommandLineTool
id: runReadsMapping.pl.cwl
inputs:
- id: in_referencefasta
  doc: <reference_fasta>
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_contains_reads_files
  doc: <query_dir> , contains reads files in the format *R[1-2].fastq, if paired,
    elase *.fastq
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_provided_write_files
  doc: <output_directory>, if not provided will write files in current directory
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__of_threads
  doc: <# of threads>
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_list_file
  doc: <list file>
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_aligner_bwabowtie
  doc: <aligner bwa|bowtie>
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runReadsMapping.pl
