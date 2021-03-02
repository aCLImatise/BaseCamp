class: CommandLineTool
id: hicCorrectMatrix_correct.cwl
inputs:
- id: in_matrix
  doc: "Name of the Hi-C matrix to correct in .h5 format.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the resulting matrix. The output is\na .h5 file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_correction_method
  doc: "Method to be used for matrix correction. It can be set\nto KR or ICE (Default:\
    \ KR)."
  type: string?
  inputBinding:
    prefix: --correctionMethod
- id: in_filter_threshold
  doc: "FILTERTHRESHOLD, -t FILTERTHRESHOLD FILTERTHRESHOLD\nRemoves bins of low or\
    \ large coverage. Usually these\nbins do not contain valid Hi-C data or represent\n\
    regions that accumulate reads and thus must be\ndiscarded. Use hicCorrectMatrix\
    \ diagnostic_plot to\nidentify the modified z-value thresholds. A lower and\n\
    upper threshold are required separated by space, e.g.\n--filterThreshold -1.5\
    \ 5. Applied only for ICE!\n(default: None)"
  type: double?
  inputBinding:
    prefix: --filterThreshold
- id: in_iter_num
  doc: "Number of iterations to compute.only for ICE!\n(Default: 500)."
  type: long?
  inputBinding:
    prefix: --iterNum
- id: in_inflation_cut_off
  doc: "Value corresponding to the maximum number of times a\nbin can be scaled up\
    \ during the iterative correction.\nFor example, an inflation cutoff of 3 will\
    \ filter out\nall bins that were expanded 3 times or more during the\niterative\
    \ correctionself.Only for ICE! (default: None)"
  type: long?
  inputBinding:
    prefix: --inflationCutoff
- id: in_trans_cut_off
  doc: "Clip high counts in the top -transcut trans regions\n(i.e. between chromosomes).\
    \ A usual value is 0.05.\nOnly for ICE! (default: None)"
  type: double?
  inputBinding:
    prefix: --transCutoff
- id: in_sequenced_count_cut_off
  doc: "Each bin receives a value indicating the fraction that\nis covered by reads.\
    \ A cutoff of 0.5 will discard all\nthose bins that have less than half of the\
    \ bin\ncovered. Only for ICE! (default: None)"
  type: double?
  inputBinding:
    prefix: --sequencedCountCutoff
- id: in_chromosomes
  doc: "List of chromosomes to be included in the iterative\ncorrection. The order\
    \ of the given chromosomes will be\nthen kept for the resulting corrected matrix\
    \ (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_skip_diagonal
  doc: "If set, diagonal counts are not included. Only for\nICE! (default: False)"
  type: boolean?
  inputBinding:
    prefix: --skipDiagonal
- id: in_per_chr
  doc: "Normalize each chromosome separately. This is useful\nfor samples from cells\
    \ with uneven number of\nchromosomes and/or translocations. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --perchr
- id: in_verbose
  doc: 'Print processing status. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_one_dot_two
  doc: ''
  type: long?
  inputBinding:
    prefix: '-1.2'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting matrix. The output is\na .h5 file. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
- correct
