class: CommandLineTool
id: lorikeet_fix_lineages.cwl
inputs:
- id: in_input
  doc: Input lineage information. (Output of merge-spoligotypes)
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_tree
  doc: Phylogenetic tree file in NWK format.
  type: File?
  inputBinding:
    prefix: --tree
- id: in_snp_matrix
  doc: Matrix with pairwise SNP distances (created with pelican)
  type: string?
  inputBinding:
    prefix: --snpmatrix
- id: in_distance
  doc: Maximum distance to consider closest neighbors. [Default=500]
  type: long?
  inputBinding:
    prefix: --distance
- id: in_fraction
  doc: "Fraction of closest neighbors that need to agree to perform change. [Default=0.6]\n"
  type: double?
  inputBinding:
    prefix: --fraction
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fix_lineages
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- fix-lineages
