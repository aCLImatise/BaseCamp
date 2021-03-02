class: CommandLineTool
id: hicDifferentialTAD.cwl
inputs:
- id: in_target_matrix
  doc: The matrix which was used to compute the TADs
  type: string?
  inputBinding:
    prefix: --targetMatrix
- id: in_control_matrix
  doc: "The control matrix to test the TADs for a differential\ninteraction pattern."
  type: string?
  inputBinding:
    prefix: --controlMatrix
- id: in_tad_domains
  doc: The TADs domain file computed by hicFindTADs.
  type: File?
  inputBinding:
    prefix: --tadDomains
- id: in_out_filename_prefix
  doc: "Outfile name prefix to store the accepted / rejected\nH0 TADs."
  type: File?
  inputBinding:
    prefix: --outFileNamePrefix
- id: in_p_value
  doc: "H0 is considered as 'two regions are identical.' i.e.\nall regions with a\
    \ test result of <= p-value are\nrejected and considered as differential."
  type: long?
  inputBinding:
    prefix: --pValue
- id: in_mode
  doc: "Consider only intra-TAD interactions, or additional\nleft inter-TAD, right\
    \ inter-TAD or all."
  type: string?
  inputBinding:
    prefix: --mode
- id: in_mode_reject
  doc: "All test of a mode must be rejected (all) or reject\nregion (and accept it\
    \ is differential) as soon as at\nleast one region is having a p-value <= --pValue."
  type: string?
  inputBinding:
    prefix: --modeReject
- id: in_threads
  doc: "Number of threads to use, the parallelization is\nimplemented per chromosome."
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_prefix
  doc: "Outfile name prefix to store the accepted / rejected\nH0 TADs."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- hicDifferentialTAD
