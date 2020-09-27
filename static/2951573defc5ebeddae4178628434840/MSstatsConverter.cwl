class: CommandLineTool
id: MSstatsConverter.cwl
inputs:
- id: in_in
  doc: "*                                     Input consensusXML with peptide intensities\
    \ (valid formats: 'consensusXML')"
  type: string
  inputBinding:
    prefix: -in
- id: in_in_design
  doc: "*                       Experimental Design file (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -in_design
- id: in_ms_stats_bio_replicate
  doc: "Which column in the condition table should be used for MSstats 'BioReplicate'\
    \ (default: 'MSstats_BioReplicate')"
  type: string
  inputBinding:
    prefix: -msstats_bioreplicate
- id: in_ms_stats_condition
  doc: "Which column in the condition table should be used for MSstats 'Condition'\
    \ (default: 'MSstats_Condition')"
  type: string
  inputBinding:
    prefix: -msstats_condition
- id: in_labeled_reference_peptides
  doc: If set, IsotopeLabelType is 'H', else 'L'
  type: boolean
  inputBinding:
    prefix: -labeled_reference_peptides
- id: in_out
  doc: "*                                   Input CSV file for MSstats. (valid formats:\
    \ 'csv')"
  type: File
  inputBinding:
    prefix: -out
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
cwlVersion: v1.1
baseCommand:
- MSstatsConverter
