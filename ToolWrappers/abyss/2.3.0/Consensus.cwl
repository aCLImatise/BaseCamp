class: CommandLineTool
id: Consensus.cwl
inputs:
- id: in_out
  doc: write the output FASTA file to OUTPUT
  type: File?
  inputBinding:
    prefix: --out
- id: in_pile_up
  doc: write the pileup to PILEUP
  type: string?
  inputBinding:
    prefix: --pileup
- id: in_nt
  doc: output nucleotide contigs [default]
  type: boolean?
  inputBinding:
    prefix: --nt
- id: in_cs
  doc: output colour-space contigs
  type: boolean?
  inputBinding:
    prefix: --cs
- id: in_variants
  doc: print only variants in the pileup
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_contig
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: write the output FASTA file to OUTPUT
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- Consensus
