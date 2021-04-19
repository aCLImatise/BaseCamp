class: CommandLineTool
id: dadaist2_transposetaxa.py.cwl
inputs:
- id: in_min_sum
  doc: Minimum sum of abundances of a taxon rank
  type: long?
  inputBinding:
    prefix: --minsum
- id: in_top_tax_a
  doc: "Print top N taxa in each sample, and collapse the\nothers in 'Other'."
  type: string?
  inputBinding:
    prefix: --toptaxa
- id: in_global_top
  doc: When using toptaxa, print the global top N taxa
  type: boolean?
  inputBinding:
    prefix: --global-top
- id: in_other_label
  doc: "Name for the new category for unclassified counts\n"
  type: string?
  inputBinding:
    prefix: --other-label
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- dadaist2-transposetaxa.py
