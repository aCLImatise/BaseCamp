class: CommandLineTool
id: tsv2bam.cwl
inputs:
- id: in_in_dir
  doc: ': input directory.'
  type: boolean
  inputBinding:
    prefix: --in-dir
- id: in_pop_map
  doc: ': population map.'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: in_sample
  doc: ': name of one sample.'
  type: boolean
  inputBinding:
    prefix: --sample
- id: in_pe_reads_dir
  doc: ': directory where to find the paired-end reads files (in fastq/fasta/bam (gz)
    format).'
  type: boolean
  inputBinding:
    prefix: --pe-reads-dir
- id: in_number_use_default
  doc: ': number of threads to use (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tsv2bam
