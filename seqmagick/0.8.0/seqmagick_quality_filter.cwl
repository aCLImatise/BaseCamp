class: CommandLineTool
id: ../../../seqmagick_quality_filter.cwl
inputs:
- id: input_qual
  doc: The quality scores associated with the input file. Only used if input file
    is fasta.
  type: string
  inputBinding:
    prefix: --input-qual
- id: min_mean_quality
  doc: 'Minimum mean quality score for each read [default: 25.0]'
  type: string
  inputBinding:
    prefix: --min-mean-quality
- id: min_length
  doc: 'Minimum length to keep sequence [default: 200]'
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: 'Maximum length to keep before truncating [default: 1000]. This operation occurs
    before --max-ambiguous'
  type: long
  inputBinding:
    prefix: --max-length
- id: ambiguous_action
  doc: "Action to take on ambiguous base in sequence (N's). [default: no action]"
  type: string
  inputBinding:
    prefix: --ambiguous-action
- id: max_ambiguous
  doc: Maximum number of ambiguous bases in a sequence. Sequences exceeding this count
    will be removed.
  type: long
  inputBinding:
    prefix: --max-ambiguous
- id: pct_ambiguous
  doc: Maximun percent of ambiguous bases in a sequence. Sequences exceeding this
    percent will be removed.
  type: string
  inputBinding:
    prefix: --pct-ambiguous
- id: report_out
  doc: 'Output file for report [default: stdout]'
  type: string
  inputBinding:
    prefix: --report-out
- id: details_out
  doc: Output file to report fate of each sequence
  type: string
  inputBinding:
    prefix: --details-out
- id: no_details_comment
  doc: Do not write comment lines with version and call to start --details-out
  type: boolean
  inputBinding:
    prefix: --no-details-comment
- id: quality_window_mean_qual
  doc: 'Minimum quality score within the window defined by --quality-window. [default:
    same as --min-mean- quality]'
  type: string
  inputBinding:
    prefix: --quality-window-mean-qual
- id: quality_window_prop
  doc: 'Proportion of reads within quality window to that must pass filter. Floats
    are [default: 1.0]'
  type: string
  inputBinding:
    prefix: --quality-window-prop
- id: quality_window
  doc: 'Window size for truncating sequences. When set to a non-zero value, sequences
    are truncated where the mean mean quality within the window drops below --min-mean-
    quality. [default: 0]'
  type: string
  inputBinding:
    prefix: --quality-window
- id: primer
  doc: IUPAC ambiguous primer to require
  type: string
  inputBinding:
    prefix: --primer
- id: no_primer
  doc: Do not use a primer.
  type: boolean
  inputBinding:
    prefix: --no-primer
- id: barcode_file
  doc: CSV file containing sample_id,barcode[,primer] in the rows. A single primer
    for all sequences may be specified with `--primer`, or `--no-primer` may be used
    to indicate barcodes should be used without a primer check.
  type: string
  inputBinding:
    prefix: --barcode-file
- id: barcode_header
  doc: 'Barcodes have a header row [default: False]'
  type: boolean
  inputBinding:
    prefix: --barcode-header
- id: map_out
  doc: Path to write sequence_id,sample_id pairs
  type: string
  inputBinding:
    prefix: --map-out
- id: quoting
  doc: 'A string naming an attribute of the csv module defining the quoting behavior
    for `SAMPLE_MAP`. [default: QUOTE_MINIMAL]'
  type: string
  inputBinding:
    prefix: --quoting
- id: sequence_file
  doc: Input fastq file. A fasta-format file may also be provided if --input-qual
    is also specified.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output file. Format determined from extension.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- quality-filter
