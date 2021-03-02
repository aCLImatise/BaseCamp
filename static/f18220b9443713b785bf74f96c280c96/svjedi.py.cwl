class: CommandLineTool
id: svjedi.py.cwl
inputs:
- id: in_vcf
  doc: vcf format
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_ref
  doc: fasta format
  type: File?
  inputBinding:
    prefix: --ref
- id: in_allele
  doc: fasta format
  type: File?
  inputBinding:
    prefix: --allele
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: genotype output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_dover
  doc: breakpoint distance overlap
  type: string?
  inputBinding:
    prefix: -dover
- id: in_d_end
  doc: soft clipping length allowed for semi global
  type: long?
  inputBinding:
    prefix: -dend
- id: in_min_support
  doc: "Minimum number of alignments to genotype a SV\n(default: 3>=)"
  type: long?
  inputBinding:
    prefix: --minsupport
- id: in_d
  doc: '[<seq data type>], --data [<seq data type>]'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_reads
  doc: -p <paffile>, --paf <paffile>
  type: string
  inputBinding:
    position: 0
- id: in_a_ling_ments
  doc: -ladj <allele_size>   Sequence allele adjacencies at each side of the SV
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: genotype output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/svjedi:1.1.4--0
cwlVersion: v1.1
baseCommand:
- svjedi.py
