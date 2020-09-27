class: CommandLineTool
id: nanopolish_call_methylation.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_reads
  doc: the ONT reads are in fasta/fastq FILE
  type: File
  inputBinding:
    prefix: --reads
- id: in_bam
  doc: the reads aligned to the genome assembly are in bam FILE
  type: File
  inputBinding:
    prefix: --bam
- id: in_genome
  doc: the genome we are calling methylation for is in fasta FILE
  type: File
  inputBinding:
    prefix: --genome
- id: in_methylation
  doc: the type of methylation (cpg,gpc,dam,dcm)
  type: string
  inputBinding:
    prefix: --methylation
- id: in_threads
  doc: 'use NUM threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_watch
  doc: watch the sequencing run directory DIR and call methylation as data is generated
  type: Directory
  inputBinding:
    prefix: --watch
- id: in_watch_write_bam
  doc: in watch mode, write the alignments for each fastq
  type: boolean
  inputBinding:
    prefix: --watch-write-bam
- id: in_watch_process_total
  doc: in watch mode, there are TOTAL calling processes running against this directory
  type: Directory
  inputBinding:
    prefix: --watch-process-total
- id: in_watch_process_index
  doc: "in watch mode, the index of this process is IDX\nthe previous two options\
    \ allow you to run multiple independent methylation\ncalling processes against\
    \ a single directory. Each process will only call\nfiles when X mod TOTAL == IDX,\
    \ where X is the suffix of the fast5 file."
  type: File
  inputBinding:
    prefix: --watch-process-index
- id: in_progress
  doc: print out a progress message
  type: boolean
  inputBinding:
    prefix: --progress
- id: in_batch_size
  doc: 'the batch size (default: 512)'
  type: long
  inputBinding:
    prefix: --batchsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanopolish
- call-methylation
