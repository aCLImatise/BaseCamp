class: CommandLineTool
id: gffGetmRNA.pl.cwl
inputs:
- id: in_genome
  doc: Input a fasta file with the genomic sequences.
  type: File?
  inputBinding:
    prefix: --genome
- id: in_mrna
  doc: Output fasta file with mRNA sequences.
  type: File?
  inputBinding:
    prefix: --mrna
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mrna
  doc: Output fasta file with mRNA sequences.
  type: File?
  outputBinding:
    glob: $(inputs.in_mrna)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- gffGetmRNA.pl
