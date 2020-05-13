class: CommandLineTool
id: MSstatsConverter.cwl
inputs:
- id: in
  doc: "*                                     Input consensusXML with peptide intensities\
    \ (valid formats: 'consensusXML')"
  type: string
  inputBinding:
    prefix: -in
- id: in_design
  doc: "*                       Experimental Design file (valid formats: 'tsv')"
  type: string
  inputBinding:
    prefix: -in_design
- id: method
  doc: "Method used in the experiment(label free [LFQ], isobaric labeling [ISO]))\
    \ (default: 'LFQ' valid: 'LFQ', 'ISO')"
  type: string
  inputBinding:
    prefix: -method
- id: ms_stats_bio_replicate
  doc: "Which column in the condition table should be used for MSstats 'BioReplicate'\
    \ (default: 'MSstats_BioReplicate')"
  type: string
  inputBinding:
    prefix: -msstats_bioreplicate
- id: ms_stats_condition
  doc: "Which column in the condition table should be used for MSstats 'Condition'\
    \ (default: 'MSstats_Condition')"
  type: string
  inputBinding:
    prefix: -msstats_condition
- id: ms_stats_mixture
  doc: "Which column in the condition table should be used for MSstats 'Mixture' (default:\
    \ 'MSstats_Mixture')"
  type: string
  inputBinding:
    prefix: -msstats_mixture
- id: labeled_reference_peptides
  doc: If set, IsotopeLabelType is 'H', else 'L'
  type: boolean
  inputBinding:
    prefix: -labeled_reference_peptides
- id: out
  doc: "*                                   Input CSV file for MSstats. (valid formats:\
    \ 'csv')"
  type: string
  inputBinding:
    prefix: -out
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
- MSstatsConverter
