#!/usr/bin/env cwl-runner

baseCommand:
- IDExtractor
class: CommandLineTool
cwlVersion: v1.0
id: idextractor
inputs:
- doc: "*                        Input file (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                       Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Number of randomly chosen peptides (default: '10' min: '1')"
  id: number_of_peptides
  inputBinding:
    prefix: -number_of_peptides
  type: long
- doc: "Number of rand invocations before random draw (default: '0' min: '0')"
  id: number_of_rand_in_v_ok_ations
  inputBinding:
    prefix: -number_of_rand_invokations
  type: long
- doc: If this flag is set the best n peptides are chosen.
  id: best_hits
  inputBinding:
    prefix: -best_hits
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
