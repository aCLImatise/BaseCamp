class: CommandLineTool
id: IDPosteriorErrorProbability.cwl
inputs:
- id: in
  doc: "*        Input file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_plot
  doc: "Txt file (if gnuplot is available, a corresponding PDF will be created as\
    \ well.) (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out_plot
- id: split_charge
  doc: The search engine scores are split by charge if this flag is set. Thus, for
    each charge state a new model will be computed.
  type: boolean
  inputBinding:
    prefix: -split_charge
- id: top_hits_only
  doc: If set only the top hits of every PeptideIdentification will be used
  type: boolean
  inputBinding:
    prefix: -top_hits_only
- id: ignore_bad_data
  doc: If set errors will be written but ignored. Useful for pipelines with many datasets
    where only a few are bad, but the pipeline should run through.
  type: boolean
  inputBinding:
    prefix: -ignore_bad_data
- id: prob_correct
  doc: If set scores will be calculated as '1 - ErrorProbabilities' and can be interpreted
    as probabilities for correct identifications.
  type: boolean
  inputBinding:
    prefix: -prob_correct
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
- id: fit_algorithm
  doc: Algorithm parameter subsection
  type: boolean
  inputBinding:
    prefix: '- fit_algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- IDPosteriorErrorProbability
