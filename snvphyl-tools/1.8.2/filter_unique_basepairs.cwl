class: CommandLineTool
id: filter_unique_basepairs.pl.cwl
inputs:
- id: tsv
  doc: The tsv file containing the snv_alignment
  type: boolean
  inputBinding:
    prefix: --tsv
- id: tree
  doc: The .tre file that contains the data for making the tree
  type: boolean
  inputBinding:
    prefix: --tree
- id: valid
  doc: Include all matches, including non-valid entries
  type: boolean
  inputBinding:
    prefix: --valid
- id: output
  doc: The file the matching positions will be written to
  type: boolean
  inputBinding:
    prefix: --output
- id: vcf
  doc: 'A VCF input file in the following format: strain_name=file_path'
  type: boolean
  inputBinding:
    prefix: --vcf
- id: directory
  doc: A folder containing all of the tabular snveff outputs
  type: boolean
  inputBinding:
    prefix: --directory
- id: strains
  doc: The strains you wish to find unique basepairs in
  type: boolean
  inputBinding:
    prefix: --strains
- id: clade
  doc: The output name for the clades tree file produced
  type: boolean
  inputBinding:
    prefix: --clade
- id: quiet
  doc: Suppress all warnings
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_unique_basepairs.pl
