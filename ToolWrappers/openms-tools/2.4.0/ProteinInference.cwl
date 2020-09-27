class: CommandLineTool
id: ProteinInference.cwl
inputs:
- id: in_in
  doc: "*                               Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                              Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_min_peptides_per_protein
  doc: "Minimal number of peptides needed for a protein identification (default: '2'\
    \ min: '1')"
  type: long
  inputBinding:
    prefix: -min_peptides_per_protein
- id: in_treat_charge_variants_separately
  doc: If this flag is set, different charge variants of the same peptide sequence
    count as inidividual evidences.
  type: boolean
  inputBinding:
    prefix: -treat_charge_variants_separately
- id: in_treat_modification_variants_separately
  doc: If this flag is set, different modification variants of the same peptide sequence
    count as individual evidences.
  type: boolean
  inputBinding:
    prefix: -treat_modification_variants_separately
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                              Output file (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ProteinInference
