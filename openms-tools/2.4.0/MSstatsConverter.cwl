#!/usr/bin/env cwl-runner

baseCommand:
- MSstatsConverter
class: CommandLineTool
cwlVersion: v1.0
id: msstatsconverter
inputs:
- doc: "*                                     Input consensusXML with peptide intensities\
    \ (valid formats: 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: "*                       Experimental Design file (valid formats: 'tsv')"
  id: in_design
  inputBinding:
    prefix: -in_design
  type: string
- doc: "Which column in the condition table should be used for MSstats 'BioReplicate'\
    \ (default: 'MSstats_BioReplicate')"
  id: ms_stats_bio_replicate
  inputBinding:
    prefix: -msstats_bioreplicate
  type: string
- doc: "Which column in the condition table should be used for MSstats 'Condition'\
    \ (default: 'MSstats_Condition')"
  id: ms_stats_condition
  inputBinding:
    prefix: -msstats_condition
  type: string
- doc: If set, IsotopeLabelType is 'H', else 'L'
  id: labeled_reference_peptides
  inputBinding:
    prefix: -labeled_reference_peptides
  type: boolean
- doc: "*                                   Input CSV file for MSstats. (valid formats:\
    \ 'csv')"
  id: out
  inputBinding:
    prefix: -out
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
