#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-predict-scan
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-predict-scan
inputs:
- doc: Input CSV or FASTA
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Print the list of supported alleles and exits
  id: list_supported_alleles
  inputBinding:
    prefix: --list-supported-alleles
  type: boolean
- doc: Print the list of supported peptide lengths and exits
  id: list_supported_peptide_lengths
  inputBinding:
    prefix: --list-supported-peptide-lengths
  type: boolean
- doc: Format of input file. By default, it is guessed from the file extension.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Alleles to predict
  id: alleles
  inputBinding:
    prefix: --alleles
  type:
    items: string
    type: array
- doc: Sequences to predict (exclusive with passing an input file)
  id: sequences
  inputBinding:
    prefix: --sequences
  type:
    items: string
    type: array
- doc: "Input CSV column name for sequence IDs. Default: 'sequence_id'"
  id: sequence_id_column
  inputBinding:
    prefix: --sequence-id-column
  type: string
- doc: "Input CSV column name for sequences. Default: 'sequence'"
  id: sequence_column
  inputBinding:
    prefix: --sequence-column
  type: string
- doc: Return NaNs for unsupported alleles or peptides instead of raising
  id: no_throw
  inputBinding:
    prefix: --no-throw
  type: boolean
- doc: 'Peptide lengths to consider. Default: [8, 9, 10, 11].'
  id: peptide_lengths
  inputBinding:
    prefix: --peptide-lengths
  type:
    items: string
    type: array
- doc: Return results for all peptides regardless of affinity, etc.
  id: results_all
  inputBinding:
    prefix: --results-all
  type: boolean
- doc: Take the top result for each sequence according to the specified predicted
    quantity
  id: results_best
  inputBinding:
    prefix: --results-best
  type: string
- doc: Filter results by the specified quantity.
  id: results_filtered
  inputBinding:
    prefix: --results-filtered
  type: string
- doc: 'Threshold if filtering by presentation score. Default: 0.7'
  id: threshold_presentation_score
  inputBinding:
    prefix: --threshold-presentation-score
  type: string
- doc: 'Threshold if filtering by processing score. Default: 0.5'
  id: threshold_processing_score
  inputBinding:
    prefix: --threshold-processing-score
  type: string
- doc: 'Threshold if filtering by affinity. Default: 500'
  id: threshold_affinity
  inputBinding:
    prefix: --threshold-affinity
  type: string
- doc: 'Threshold if filtering by affinity percentile. Default: 2.0'
  id: threshold_affinity_percentile
  inputBinding:
    prefix: --threshold-affinity-percentile
  type: string
- doc: Output CSV
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: "Delimiter character for results. Default: ','"
  id: output_delimiter
  inputBinding:
    prefix: --output-delimiter
  type: string
- doc: Do not include affinity percentile rank
  id: no_affinity_percentile
  inputBinding:
    prefix: --no-affinity-percentile
  type: boolean
- doc: 'Directory containing presentation models.Default: /hom e/ubuntu/.local/share/mhcflurry/4/1.6.0/models_class1_
    presentation/models'
  id: models
  inputBinding:
    prefix: --models
  type: string
- doc: Do not use flanking sequence information in predictions
  id: no_flanking
  inputBinding:
    prefix: --no-flanking
  type: boolean
