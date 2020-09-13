class: CommandLineTool
id: ../../../velveth.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_fast_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_fasta_do_tgz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fasta.gz
- id: in_fast_q_do_tgz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fastq.gz
- id: in_sam
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sam
- id: in_bam
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_el_and
  doc: ''
  type: boolean
  inputBinding:
    prefix: -eland
- id: in_gerald
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gerald
- id: in_short
  doc: ''
  type: boolean
  inputBinding:
    prefix: -short
- id: in_short_paired
  doc: ''
  type: boolean
  inputBinding:
    prefix: -shortPaired
- id: in_short_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: -short2
- id: in_short_paired_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: -shortPaired2
- id: in_long
  doc: ''
  type: boolean
  inputBinding:
    prefix: -long
- id: in_long_paired
  doc: ''
  type: boolean
  inputBinding:
    prefix: -longPaired
- id: in_strand_specific
  doc: ': for strand specific transcriptome sequencing data (default: off)'
  type: boolean
  inputBinding:
    prefix: -strand_specific
- id: in_directory
  doc: ': directory name for output files'
  type: Directory
  inputBinding:
    position: 0
- id: in_hash_length
  doc: ': odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)'
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ': path to sequence file or - for standard input'
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- velveth
