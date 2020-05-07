class: CommandLineTool
id: PrecursorIonSelector.cwl
inputs:
- id: in
  doc: "*            Input feature map file (featureXML) (valid formats: 'featureXML')"
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: "Modified feature map (valid formats: 'featureXML')"
  type: string
  inputBinding:
    prefix: -out
- id: next_feat
  doc: "Feature map (featureXML) file with the selected precursors (valid formats:\
    \ 'featureXML')"
  type: string
  inputBinding:
    prefix: -next_feat
- id: ids
  doc: "*              File containing results of identification (valid formats: 'idXML')"
  type: string
  inputBinding:
    prefix: -ids
- id: num_precursors
  doc: "Number of precursors to be selected (default: '1')"
  type: long
  inputBinding:
    prefix: -num_precursors
- id: raw_data
  doc: "Input profile data. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -raw_data
- id: load_preprocessing
  doc: The preprocessed db is loaded from file, not calculated.
  type: boolean
  inputBinding:
    prefix: -load_preprocessing
- id: store_preprocessing
  doc: The preprocessed db is stored.
  type: boolean
  inputBinding:
    prefix: -store_preprocessing
- id: simulation
  doc: Simulate the whole LC-MS/MS run.
  type: boolean
  inputBinding:
    prefix: -simulation
- id: sim_results
  doc: "File containing the results of the simulation run (valid formats: 'txt')"
  type: string
  inputBinding:
    prefix: -sim_results
- id: db_path
  doc: "Db file (valid formats: 'fasta')"
  type: string
  inputBinding:
    prefix: -db_path
- id: rt_model
  doc: "SVM Model for RTPredict (valid formats: 'txt')"
  type: string
  inputBinding:
    prefix: -rt_model
- id: dt_model
  doc: "SVM Model for PTPredict (valid formats: 'txt')"
  type: string
  inputBinding:
    prefix: -dt_model
- id: fixed_modifications
  doc: The modifications i.e. Carboxymethyl (C)
  type: string
  inputBinding:
    prefix: -fixed_modifications
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
- id: algorithm
  doc: Settings for the compound list creation and rescoring.
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/TOPP_PrecursorIonSelector.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- PrecursorIonSelector
