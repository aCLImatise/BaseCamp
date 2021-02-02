class: CommandLineTool
id: IDPosteriorErrorProbability.cwl
inputs:
- id: in_in
  doc: "*        Input file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*       Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_plot
  doc: "Txt file (if gnuplot is available, a corresponding PDF will be created as\
    \ well.) (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out_plot
- id: in_split_charge
  doc: The search engine scores are split by charge if this flag is set. Thus, for
    each charge state a new model will be computed.
  type: boolean
  inputBinding:
    prefix: -split_charge
- id: in_top_hits_only
  doc: If set only the top hits of every PeptideIdentification will be used
  type: boolean
  inputBinding:
    prefix: -top_hits_only
- id: in_ignore_bad_data
  doc: If set errors will be written but ignored. Useful for pipelines with many datasets
    where only a few are bad, but the pipeline should run through.
  type: boolean
  inputBinding:
    prefix: -ignore_bad_data
- id: in_prob_correct
  doc: If set scores will be calculated as '1 - ErrorProbabilities' and can be interpreted
    as probabilities for correct identifications.
  type: boolean
  inputBinding:
    prefix: -prob_correct
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
- id: out_out
  doc: "*       Output file  (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- IDPosteriorErrorProbability
