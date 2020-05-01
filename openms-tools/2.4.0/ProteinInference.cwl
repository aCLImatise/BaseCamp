#!/usr/bin/env cwl-runner

baseCommand:
- ProteinInference
class: CommandLineTool
cwlVersion: v1.0
id: proteininference
inputs:
- doc: "*                               Input file (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                              Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimal number of peptides needed for a protein identification (default: '2'\
    \ min: '1')"
  id: min_peptides_per_protein
  inputBinding:
    prefix: -min_peptides_per_protein
  type: string
- doc: If this flag is set, different charge variants of the same peptide sequence
    count as inidividual evidences.
  id: treat_charge_variants_separately
  inputBinding:
    prefix: -treat_charge_variants_separately
  type: boolean
- doc: If this flag is set, different modification variants of the same peptide sequence
    count as individual evidences.
  id: treat_modification_variants_separately
  inputBinding:
    prefix: -treat_modification_variants_separately
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
