#!/usr/bin/env cwl-runner

baseCommand:
- SequenceCoverageCalculator
class: CommandLineTool
cwlVersion: v1.0
id: sequencecoveragecalculator
inputs:
- doc: "*  Input file containing the database in FASTA format (valid formats: 'fasta')"
  id: in_database
  inputBinding:
    prefix: -in_database
  type: File
- doc: "*  Input file containing the identified peptides (valid formats: 'idXML')"
  id: in_peptides
  inputBinding:
    prefix: -in_peptides
  type: File
- doc: "Optional text output file. If left out, the output is written to the command\
    \ line. (valid formats: 'txt')"
  id: out
  inputBinding:
    prefix: -out
  type: File
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
