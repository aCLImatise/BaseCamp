class: CommandLineTool
id: incorporateVCF.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: in_fasta_file_incorporate
  doc: "[FASTA], --fasta [FASTA]\nThe fasta file to incorporate changes into."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_file_write_resulting
  doc: "[OUT], --out [OUT]\nThe file to write resulting fasta file to."
  type: File
  inputBinding:
    prefix: -o
- id: in_vcf
  doc: The VCF file to use.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_no_homozygous
  doc: Don't include homozygous variants (default to include)
  type: boolean
  inputBinding:
    prefix: --no-homozygous
- id: in_heterozygous
  doc: Use heterozygous variants
  type: boolean
  inputBinding:
    prefix: --heterozygous
- id: in_no_snps
  doc: Don't use SNPs (default to true).
  type: boolean
  inputBinding:
    prefix: --no-snps
- id: in_dels
  doc: Use Deletions.
  type: boolean
  inputBinding:
    prefix: --dels
- id: in_ins
  doc: Use Insertions.
  type: boolean
  inputBinding:
    prefix: --ins
- id: in_individual
  doc: The Individual to use.
  type: string
  inputBinding:
    prefix: --individual
- id: in_append_chromosome
  doc: Should 'chr' be appended to the chromosome column?.
  type: boolean
  inputBinding:
    prefix: --append-chromosome
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_resulting
  doc: "[OUT], --out [OUT]\nThe file to write resulting fasta file to."
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_resulting)
cwlVersion: v1.1
baseCommand:
- incorporateVCF.py
