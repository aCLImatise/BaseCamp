#!/usr/bin/env cwl-runner

baseCommand:
- PrecursorIonSelector
class: CommandLineTool
cwlVersion: v1.0
id: precursorionselector
inputs:
- doc: "*            Input feature map file (featureXML) (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: "Modified feature map (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: string
- doc: "Feature map (featureXML) file with the selected precursors (valid formats:\
    \ 'featureXML')"
  id: next_feat
  inputBinding:
    prefix: -next_feat
  type: string
- doc: "*              File containing results of identification (valid formats: 'idXML')"
  id: ids
  inputBinding:
    prefix: -ids
  type: string
- doc: "Number of precursors to be selected (default: '1')"
  id: num_precursors
  inputBinding:
    prefix: -num_precursors
  type: long
- doc: "Input profile data. (valid formats: 'mzML')"
  id: raw_data
  inputBinding:
    prefix: -raw_data
  type: File
- doc: The preprocessed db is loaded from file, not calculated.
  id: load_preprocessing
  inputBinding:
    prefix: -load_preprocessing
  type: boolean
- doc: The preprocessed db is stored.
  id: store_preprocessing
  inputBinding:
    prefix: -store_preprocessing
  type: boolean
- doc: Simulate the whole LC-MS/MS run.
  id: simulation
  inputBinding:
    prefix: -simulation
  type: boolean
- doc: "File containing the results of the simulation run (valid formats: 'txt')"
  id: sim_results
  inputBinding:
    prefix: -sim_results
  type: string
- doc: "Db file (valid formats: 'fasta')"
  id: db_path
  inputBinding:
    prefix: -db_path
  type: string
- doc: "SVM Model for RTPredict (valid formats: 'txt')"
  id: rt_model
  inputBinding:
    prefix: -rt_model
  type: string
- doc: "SVM Model for PTPredict (valid formats: 'txt')"
  id: dt_model
  inputBinding:
    prefix: -dt_model
  type: string
- doc: The modifications i.e. Carboxymethyl (C)
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
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
- doc: Settings for the compound list creation and rescoring.
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_PrecursorIonSelector.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
