class: CommandLineTool
id: BRS.cwl
inputs:
- id: in_quantile_used_identification
  doc: ': the quantile used for identification of the singular genomic positions;
    default is 0.95'
  type: double?
  inputBinding:
    prefix: -q
- id: in_window_size_calculating
  doc: ': the window size for calculating the quantiles; default is 200'
  type: long?
  inputBinding:
    prefix: -w
- id: in_output_bin_file
  doc: ': the output bin file; if unspecified, print to the stdout.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_mappability_file_provided
  doc: ': the mappability file; If provided, filter by mappability and the output
    will contain uniquely mappable positions with no reads mapped'
  type: File?
  inputBinding:
    prefix: -m
- id: in_gap_file_file
  doc: ': the gap file (two column data file with 1st column the start positions of
    the gaps and the 2nd column the end positions of the gaps)'
  type: File?
  inputBinding:
    prefix: -g
- id: in_report_summary_statistics
  doc: ': report the summary statistics to the file <string>'
  type: File?
  inputBinding:
    prefix: -s
- id: in_multiplicity
  doc: ": If a genomic position has more than multiplicity*quantile number of reads,\n\
    it will be viewed as an outlier\nand the number of reads at this position will\
    \ be set as multiplicity*quantile;\ndefault is 5.0\n"
  type: double?
  inputBinding:
    prefix: --multiplicity
- id: in_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bin_file
  doc: ': the output bin file; if unspecified, print to the stdout.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bin_file)
- id: out_mappability_file_provided
  doc: ': the mappability file; If provided, filter by mappability and the output
    will contain uniquely mappable positions with no reads mapped'
  type: File?
  outputBinding:
    glob: $(inputs.in_mappability_file_provided)
hints: []
cwlVersion: v1.1
baseCommand:
- BRS
