#!/usr/bin/env cwl-runner

baseCommand:
- IDPosteriorErrorProbability
class: CommandLineTool
cwlVersion: v1.0
id: idposteriorerrorprobability
inputs:
- doc: "*        Input file  (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Txt file (if gnuplot is available, a corresponding PDF will be created as\
    \ well.) (valid formats: 'txt')"
  id: out_plot
  inputBinding:
    prefix: -out_plot
  type: File
- doc: The search engine scores are split by charge if this flag is set. Thus, for
    each charge state a new model will be computed.
  id: split_charge
  inputBinding:
    prefix: -split_charge
  type: boolean
- doc: If set only the top hits of every PeptideIdentification will be used
  id: top_hits_only
  inputBinding:
    prefix: -top_hits_only
  type: boolean
- doc: If set errors will be written but ignored. Useful for pipelines with many datasets
    where only a few are bad, but the pipeline should run through.
  id: ignore_bad_data
  inputBinding:
    prefix: -ignore_bad_data
  type: boolean
- doc: If set scores will be calculated as '1 - ErrorProbabilities' and can be interpreted
    as probabilities for correct identifications.
  id: prob_correct
  inputBinding:
    prefix: -prob_correct
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
- doc: Algorithm parameter subsection
  id: fit_algorithm
  inputBinding:
    prefix: '- fit_algorithm'
  type: boolean
