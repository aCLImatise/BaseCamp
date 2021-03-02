class: CommandLineTool
id: filter_unique_basepairs.pl.cwl
inputs:
- id: in_tsv
  doc: The tsv file containing the snv_alignment
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_tree
  doc: The .tre file that contains the data for making the tree
  type: boolean?
  inputBinding:
    prefix: --tree
- id: in_valid
  doc: Include all matches, including non-valid entries
  type: boolean?
  inputBinding:
    prefix: --valid
- id: in_file_matching_positions
  doc: The file the matching positions will be written to
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_vcf
  doc: 'A VCF input file in the following format: strain_name=file_path'
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_directory
  doc: A folder containing all of the tabular snveff outputs
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_strains
  doc: The strains you wish to find unique basepairs in
  type: boolean?
  inputBinding:
    prefix: --strains
- id: in_clade
  doc: The output name for the clades tree file produced
  type: File?
  inputBinding:
    prefix: --clade
- id: in_quiet
  doc: Suppress all warnings
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clade
  doc: The output name for the clades tree file produced
  type: File?
  outputBinding:
    glob: $(inputs.in_clade)
hints: []
cwlVersion: v1.1
baseCommand:
- filter_unique_basepairs.pl
