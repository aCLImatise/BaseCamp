#!/usr/bin/env cwl-runner

baseCommand:
- ProteinResolver
class: CommandLineTool
cwlVersion: v1.0
id: proteinresolver
inputs:
- doc: "*                       Input database file (valid formats: 'fasta')"
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: File
- doc: "<file(s)>                        Input file(s) holding experimental data (valid\
    \ formats: 'idXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: Path to idXMLs or consensusXMLs files. Ignored if 'in' is given.
  id: in_path
  inputBinding:
    prefix: -in_path
  type: File
- doc: "Text file containing the experimental design. See documentation for specific\
    \ format requirements (valid formats: 'txt')"
  id: design
  inputBinding:
    prefix: -design
  type: File
- doc: "Output file. Contains all protein groups (valid formats: 'csv')"
  id: protein_groups
  inputBinding:
    prefix: -protein_groups
  type: File
- doc: "Output file. Contains one peptide per line and all proteins which contain\
    \ that peptide (valid formats: 'csv')"
  id: peptide_table
  inputBinding:
    prefix: -peptide_table
  type: File
- doc: "Output file. Contains one protein per line (valid formats: 'csv')"
  id: protein_table
  inputBinding:
    prefix: -protein_table
  type: File
- doc: ":missed_cleavages <number>  Number of allowed missed cleavages (default: '2'\
    \ min: '0')"
  id: resolver
  inputBinding:
    prefix: -resolver
  type: boolean
- doc: ":min_length <number>        Minimum length of peptide (default: '6' min: '1')"
  id: resolver
  inputBinding:
    prefix: -resolver
  type: boolean
- doc: ":enzyme <choice>            Digestion enzyme (default: 'Trypsin' valid: 'Trypsin')"
  id: resolver
  inputBinding:
    prefix: -resolver
  type: boolean
- doc: ":experiment <text>          Identifier for the experimental design. (default:\
    \ 'ExperimentalSetting')"
  id: designer
  inputBinding:
    prefix: -designer
  type: boolean
- doc: ":file <text>                Identifier for the file name. (default: 'File')"
  id: designer
  inputBinding:
    prefix: -designer
  type: boolean
- doc: ":separator <choice>         Separator, which should be used to split a row\
    \ into columns (default: 'tab' valid: 'tab', 'semi-colon', 'comma', 'whitespace')"
  id: designer
  inputBinding:
    prefix: -designer
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
