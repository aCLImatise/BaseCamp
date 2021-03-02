class: CommandLineTool
id: PrecursorIonSelector.cwl
inputs:
- id: in_in
  doc: "*            Input feature map file (featureXML) (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Modified feature map (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_next_feat
  doc: "Feature map (featureXML) file with the selected precursors (valid formats:\
    \ 'featureXML')"
  type: File?
  inputBinding:
    prefix: -next_feat
- id: in_ids
  doc: "*              File containing results of identification (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -ids
- id: in_num_precursors
  doc: "Number of precursors to be selected (default: '1')"
  type: long?
  inputBinding:
    prefix: -num_precursors
- id: in_raw_data
  doc: "Input profile data. (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -raw_data
- id: in_load_preprocessing
  doc: The preprocessed db is loaded from file, not calculated.
  type: boolean?
  inputBinding:
    prefix: -load_preprocessing
- id: in_store_preprocessing
  doc: The preprocessed db is stored.
  type: boolean?
  inputBinding:
    prefix: -store_preprocessing
- id: in_simulation
  doc: Simulate the whole LC-MS/MS run.
  type: boolean?
  inputBinding:
    prefix: -simulation
- id: in_sim_results
  doc: File containing the results of the simulation run
  type: File?
  inputBinding:
    prefix: -sim_results
- id: in_db_path
  doc: "Db file (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -db_path
- id: in_rt_model
  doc: SVM Model for RTPredict
  type: File?
  inputBinding:
    prefix: -rt_model
- id: in_dt_model
  doc: SVM Model for PTPredict
  type: File?
  inputBinding:
    prefix: -dt_model
- id: in_fixed_modifications
  doc: The modifications i.e. Carboxymethyl (C)
  type: string?
  inputBinding:
    prefix: -fixed_modifications
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Modified feature map (valid formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_next_feat
  doc: "Feature map (featureXML) file with the selected precursors (valid formats:\
    \ 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_next_feat)
- id: out_sim_results
  doc: File containing the results of the simulation run
  type: File?
  outputBinding:
    glob: $(inputs.in_sim_results)
hints: []
cwlVersion: v1.1
baseCommand:
- PrecursorIonSelector
