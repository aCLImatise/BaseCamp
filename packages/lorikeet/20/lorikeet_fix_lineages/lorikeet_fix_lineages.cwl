class: CommandLineTool
id: lorikeet_fix_lineages.cwl
inputs:
- id: in__input_output
  doc: "| --input <value>\nInput lineage information. (Output of merge-spoligotypes)"
  type: string
  inputBinding:
    prefix: -i
- id: in__output_valueoutput
  doc: "| --output <value>\nOutput file."
  type: File
  inputBinding:
    prefix: -o
- id: in__tree_valuephylogenetic
  doc: "| --tree <value>\nPhylogenetic tree file in NWK format."
  type: File
  inputBinding:
    prefix: -t
- id: in__snpmatrix_valuematrix
  doc: "| --snpmatrix <value>\nMatrix with pairwise SNP distances (created with pelican)"
  type: string
  inputBinding:
    prefix: -s
- id: in_distance
  doc: Maximum distance to consider closest neighbors. [Default=500]
  type: long
  inputBinding:
    prefix: --distance
- id: in_fraction
  doc: "Fraction of closest neighbors that need to agree to perform change. [Default=0.6]\n"
  type: double
  inputBinding:
    prefix: --fraction
- id: in_jar
  doc: ''
  type: string
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
- id: out__output_valueoutput
  doc: "| --output <value>\nOutput file."
  type: File
  outputBinding:
    glob: $(inputs.in__output_valueoutput)
cwlVersion: v1.1
baseCommand:
- lorikeet
- fix-lineages
