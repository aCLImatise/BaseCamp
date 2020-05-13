class: CommandLineTool
id: tsv2bam.cwl
inputs:
- id: in_dir
  doc: ': input directory.'
  type: boolean
  inputBinding:
    prefix: --in-dir
- id: pop_map
  doc: ': population map.'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: sample
  doc: ': name of one sample.'
  type: boolean
  inputBinding:
    prefix: --sample
- id: pe_reads_dir
  doc: ': directory where to find the paired-end reads files (in fastq/fasta/bam (gz)
    format).'
  type: boolean
  inputBinding:
    prefix: --pe-reads-dir
- id: t
  doc: ': number of threads to use (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- tsv2bam
