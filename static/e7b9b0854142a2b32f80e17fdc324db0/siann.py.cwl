class: CommandLineTool
id: siann.py.cwl
inputs:
- id: in_db
  doc: database of reference genomes to use
  type: string?
  inputBinding:
    prefix: --db
- id: in_threads
  doc: "number of threads to use for alignment (all by\ndefault)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_paired
  doc: second set of reads in pair (if any)
  type: string?
  inputBinding:
    prefix: --paired
- id: in_report
  doc: turn off the generation of a report
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_reads_out
  doc: turn on the output of species- and strain-specific
  type: boolean?
  inputBinding:
    prefix: --reads_out
- id: in_set_reads_fastqfasta
  doc: Set of reads (FASTQ/FASTA) to be processed
  type: string?
  inputBinding:
    prefix: --reads
- id: in_out
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --out
- id: in__keepsam_retain
  doc: --keep_sam            retain the aligned reads in SAM format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/siann:1.1--0
cwlVersion: v1.1
baseCommand:
- siann.py
