class: CommandLineTool
id: nanopolish_polya.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_window
  doc: 'only compute the poly-A lengths for reads in window STR (format: ctg:start_id-end_id)'
  type: string
  inputBinding:
    prefix: --window
- id: in_reads
  doc: the 1D ONT direct RNA reads are in fasta FILE
  type: File
  inputBinding:
    prefix: --reads
- id: in_bam
  doc: the reads aligned to the genome assembly are in bam FILE
  type: File
  inputBinding:
    prefix: --bam
- id: in_genome
  doc: the reference genome assembly for the reads is in FILE
  type: File
  inputBinding:
    prefix: --genome
- id: in_threads
  doc: 'use NUM threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanopolish
- polya
