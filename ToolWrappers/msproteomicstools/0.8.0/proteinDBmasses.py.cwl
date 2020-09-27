class: CommandLineTool
id: proteinDBmasses.py.cwl
inputs:
- id: in_protein_abundance_file
  doc: abundancefile   Protein abundance file. If not used, the script will just report
    the number of peptides and molecular weight of the proteins.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_dynamicrange_simulation_peptide
  doc: dynamic-range   Simulation of peptide intensity by using the peptide detectability
    dynamic range specified. If not used, there will not be any simulation
  type: boolean
  inputBinding:
    prefix: -d
- id: in_enzyme_enzyme_used
  doc: 'enzyme  Enzyme used for in-silico digestion (peptide counting). Options: trypsin,
    Asp-N, Arg-C, Chymotrypsin, Lys-C, Lys-N. Default: trypsin'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_peplength_minimum_peptide
  doc: 'pep-length      Minimum peptide length for the in-silico digestion. Default:
    5'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_define_minimum_number
  doc: min-peptides    Define a minimum number of peptides to identify a protein.
    This must be completed with the -n option.
  type: boolean
  inputBinding:
    prefix: -m
- id: in_peptidesidentified_define_number
  doc: peptides-identified Define a number of identified peptides to estimate the
    number of proteins identified.
  type: boolean
  inputBinding:
    prefix: -n
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- proteinDBmasses.py
