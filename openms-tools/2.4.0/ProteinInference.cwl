class: CommandLineTool
id: ProteinInference.cwl
inputs:
- id: in
  doc: "*                               Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                              Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: min_peptides_per_protein
  doc: "Minimal number of peptides needed for a protein identification (default: '2'\
    \ min: '1')"
  type: string
  inputBinding:
    prefix: -min_peptides_per_protein
- id: treat_charge_variants_separately
  doc: If this flag is set, different charge variants of the same peptide sequence
    count as inidividual evidences.
  type: boolean
  inputBinding:
    prefix: -treat_charge_variants_separately
- id: treat_modification_variants_separately
  doc: If this flag is set, different modification variants of the same peptide sequence
    count as individual evidences.
  type: boolean
  inputBinding:
    prefix: -treat_modification_variants_separately
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- ProteinInference
