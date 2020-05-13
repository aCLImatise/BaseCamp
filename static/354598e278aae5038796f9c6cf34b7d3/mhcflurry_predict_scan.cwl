class: CommandLineTool
id: mhcflurry_predict_scan.cwl
inputs:
- id: input
  doc: Input CSV or FASTA
  type: string
  inputBinding:
    position: 0
- id: list_supported_alleles
  doc: Print the list of supported alleles and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-alleles
- id: list_supported_peptide_lengths
  doc: Print the list of supported peptide lengths and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-peptide-lengths
- id: input_format
  doc: Format of input file. By default, it is guessed from the file extension.
  type: string
  inputBinding:
    prefix: --input-format
- id: alleles
  doc: Alleles to predict
  type: string[]
  inputBinding:
    prefix: --alleles
- id: sequences
  doc: Sequences to predict (exclusive with passing an input file)
  type: string[]
  inputBinding:
    prefix: --sequences
- id: sequence_id_column
  doc: "Input CSV column name for sequence IDs. Default: 'sequence_id'"
  type: string
  inputBinding:
    prefix: --sequence-id-column
- id: sequence_column
  doc: "Input CSV column name for sequences. Default: 'sequence'"
  type: string
  inputBinding:
    prefix: --sequence-column
- id: no_throw
  doc: Return NaNs for unsupported alleles or peptides instead of raising
  type: boolean
  inputBinding:
    prefix: --no-throw
- id: peptide_lengths
  doc: 'Peptide lengths to consider. Default: [8, 9, 10, 11].'
  type: string[]
  inputBinding:
    prefix: --peptide-lengths
- id: results_all
  doc: Return results for all peptides regardless of affinity, etc.
  type: boolean
  inputBinding:
    prefix: --results-all
- id: results_best
  doc: Take the top result for each sequence according to the specified predicted
    quantity
  type: string
  inputBinding:
    prefix: --results-best
- id: results_filtered
  doc: Filter results by the specified quantity.
  type: string
  inputBinding:
    prefix: --results-filtered
- id: threshold_presentation_score
  doc: 'Threshold if filtering by presentation score. Default: 0.7'
  type: string
  inputBinding:
    prefix: --threshold-presentation-score
- id: threshold_processing_score
  doc: 'Threshold if filtering by processing score. Default: 0.5'
  type: string
  inputBinding:
    prefix: --threshold-processing-score
- id: threshold_affinity
  doc: 'Threshold if filtering by affinity. Default: 500'
  type: string
  inputBinding:
    prefix: --threshold-affinity
- id: threshold_affinity_percentile
  doc: 'Threshold if filtering by affinity percentile. Default: 2.0'
  type: string
  inputBinding:
    prefix: --threshold-affinity-percentile
- id: out
  doc: Output CSV
  type: string
  inputBinding:
    prefix: --out
- id: output_delimiter
  doc: "Delimiter character for results. Default: ','"
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: no_affinity_percentile
  doc: Do not include affinity percentile rank
  type: boolean
  inputBinding:
    prefix: --no-affinity-percentile
- id: models
  doc: 'Directory containing presentation models.Default: /hom e/ubuntu/.local/share/mhcflurry/4/1.6.0/models_class1_
    presentation/models'
  type: string
  inputBinding:
    prefix: --models
- id: no_flanking
  doc: Do not use flanking sequence information in predictions
  type: boolean
  inputBinding:
    prefix: --no-flanking
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-predict-scan
