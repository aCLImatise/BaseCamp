class: CommandLineTool
id: suppa.py_diffSplice.cwl
inputs:
- id: in_method
  doc: Method to test significance. Required.
  type: string?
  inputBinding:
    prefix: --method
- id: in_psi
  doc: "Path of the PSI files. PSI files and the transcript\nexpression (TPM) files\
    \ must have the same order.The\nconditions files and the tpm files must have the\
    \ same\norder."
  type: string[]
  inputBinding:
    prefix: --psi
- id: in_tpm
  doc: "Path of the transcript expression (TPM) files.\nConditions files and the transcript\
    \ expression (TPM)\nfiles must have the same order.The conditions files\nand the\
    \ tpm files must have the same order."
  type: string[]
  inputBinding:
    prefix: --tpm
- id: in_input
  doc: "Input file with the event-transcripts equivalence\n(.ioe or .ioi format)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_area
  doc: "Number indicating the number of points in the local\narea distribution. (default:\
    \ 1000)"
  type: long?
  inputBinding:
    prefix: --area
- id: in_lower_bound
  doc: "Lower-bound for the absolute delta PSI value to test\nfor significance. (Default:\
    \ 0)."
  type: long?
  inputBinding:
    prefix: --lower-bound
- id: in_paired
  doc: "Boolean. Indicates if replicates in conditions are\npaired. (Default: False)."
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_gene_correction
  doc: "Boolean. If True, SUPPA correct the p-values by gene.\n(Default: False)."
  type: boolean?
  inputBinding:
    prefix: --gene-correction
- id: in_alpha
  doc: "Family-wise error rate to use for the multiple test\ncorrection. (Default:\
    \ 0.05)."
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_save_tpm_events
  doc: "Boolean. If True, the average log TPM of the events\nwill be saved in an external\
    \ file (Default: False)."
  type: boolean?
  inputBinding:
    prefix: --save_tpm_events
- id: in_combination
  doc: "Boolean. If True, SUPPA perform the analysis between\nall the possible combinations\
    \ of conditions (Default:\nFalse)."
  type: boolean?
  inputBinding:
    prefix: --combination
- id: in_median
  doc: "Boolean. If True, SUPPA use the median to calculate\nthe Delta PSI. (Default:\
    \ False)."
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_tpm_threshold
  doc: "Minimum transcript average TPM value within-replicates\nand between-conditions\
    \ to be included in the analysis.\n(Default: 1.0)."
  type: double?
  inputBinding:
    prefix: --tpm-threshold
- id: in_nan_threshold
  doc: "Percentage allowed of samples per condition with nan\nvalues for returning\
    \ a DeltaPSI (Default: 0, no\nmissing values allowed)."
  type: long?
  inputBinding:
    prefix: --nan-threshold
- id: in_output
  doc: Name of the output files.
  type: string?
  inputBinding:
    prefix: --output
- id: in_mode
  doc: "to choose from DEBUG, INFO, WARNING, ERROR and\nCRITICAL\n"
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- suppa.py
- diffSplice
