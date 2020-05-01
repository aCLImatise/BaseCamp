#!/usr/bin/env cwl-runner

baseCommand:
- RNAMassCalculator
class: CommandLineTool
cwlVersion: v1.0
id: rnamasscalculator
inputs:
- doc: "Input file with RNA sequences and optionally charge numbers (mutually exclusive\
    \ to 'in_seq') (valid formats: 'txt')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: List of RNA sequences (mutually exclusive to 'in')
  id: in_seq
  inputBinding:
    prefix: -in_seq
  type: string
- doc: "Output file; if empty, output is written to the screen (valid formats: 'txt')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "List of charge states; required if 'in_seq' is given (default: '[0]')"
  id: charge
  inputBinding:
    prefix: -charge
  type: string
- doc: "Output format ('list': human-readable list, 'table': CSV-like table, 'mass_only':\
    \ mass values only, 'mz_only': m/z values only) (default: 'list' valid: 'list',\
    \ 'table', 'mass_only', 'mz_only')"
  id: format
  inputBinding:
    prefix: -format
  type: string
- doc: Compute average (instead of monoisotopic) oligonucleotide masses
  id: average_mass
  inputBinding:
    prefix: -average_mass
  type: boolean
- doc: "For what type of sequence/fragment the mass should be computed (default: 'full'\
    \ valid: 'full', 'internal', '5-prime', '3-prime', 'a-B-ion', 'a-ion', 'b-ion',\
    \ 'c-ion', 'd-ion', 'w-ion', 'x-ion', 'y-ion', 'z-ion')"
  id: fragment_type
  inputBinding:
    prefix: -fragment_type
  type: string
- doc: Field separator for 'table' output format; by default, the 'tab' character
    is used
  id: separator
  inputBinding:
    prefix: -separator
  type: string
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
