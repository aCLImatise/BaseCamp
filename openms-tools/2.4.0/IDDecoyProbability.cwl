#!/usr/bin/env cwl-runner

baseCommand:
- IDDecoyProbability
class: CommandLineTool
cwlVersion: v1.0
id: iddecoyprobability
inputs:
- doc: "Identification input of combined forward decoy search (reindex with PeptideIndexer\
    \ first) (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Identification input of forward run (valid formats: 'idXML')"
  id: fwd_in
  inputBinding:
    prefix: -fwd_in
  type: File
- doc: "Identification input of decoy run (valid formats: 'idXML')"
  id: rev_in
  inputBinding:
    prefix: -rev_in
  type: File
- doc: "*       Identification output with forward scores converted to probabilities\
    \ (valid formats: 'idXML')"
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
- doc: Algorithm parameter subsection
  id: decoy_algorithm
  inputBinding:
    prefix: '- decoy_algorithm'
  type: boolean
