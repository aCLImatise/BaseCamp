class: CommandLineTool
id: type_variants.py.cwl
inputs:
- id: in_fast_a_in
  doc: alignment to type, in fasta format
  type: string?
  inputBinding:
    prefix: --fasta-in
- id: in_variants_config
  doc: "config file containing variants to type. Format is like:\nsnp:T6954C\ndel:11288:9\n\
    aa:orf1ab:T1001I\nsnp and del positions are 1-based nucleotide position relative\
    \ to the alignment\naa position is 1-based codon position relative to the cds\n\
    No header line or comment lines are permitted"
  type: File?
  inputBinding:
    prefix: --variants-config
- id: in_reference
  doc: Wuhan-Hu-1 in fasta format (for typing the reference allele at deletions and
    sanity checking the config file)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_variants_out
  doc: csv file to write
  type: File?
  inputBinding:
    prefix: --variants-out
- id: in_append_genotypes
  doc: if invoked, write the genotype for each variant in the config file to the output
  type: File?
  inputBinding:
    prefix: --append-genotypes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_append_genotypes
  doc: if invoked, write the genotype for each variant in the config file to the output
  type: File?
  outputBinding:
    glob: $(inputs.in_append_genotypes)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.8--py_0
cwlVersion: v1.1
baseCommand:
- type_variants.py
