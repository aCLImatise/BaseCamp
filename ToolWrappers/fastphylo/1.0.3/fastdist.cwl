class: CommandLineTool
id: fastdist.cwl
inputs:
- id: in_outfile
  doc: "output filename. If not specifed, output is\nwritten to stdout"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_input_format
  doc: "input format. xml means the Fastphylo sequence\nXML format  (possible values=\"\
    fasta\",\n\"phylip\", \"xml\" default=`fasta')"
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_memory_efficient
  doc: "memory efficient. Use less memory space and\nfast implementation. Only used\
    \ with fasta and\nphylip format  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --memory-efficient
- id: in_output_format
  doc: "output format. xml means the Fastphylo distance\nmatrix XML format  (possible\n\
    values=\"phylip\", \"xml\", \"binary\"\ndefault=`xml')"
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_distance_function
  doc: "Distance function  (possible values=\"JC\",\n\"K2P\", \"TN93\", \"HAMMING\"\
    \ default=`K2P')"
  type: long?
  inputBinding:
    prefix: --distance-function
- id: in_bootstraps
  doc: "Bootstrap num times and create matrix for each\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --bootstraps
- id: in_no_incl_orig
  doc: "If the distance matrix from the original\nsequences should not be included\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --no-incl-orig
- id: in_seed
  doc: "Random seed. If not specified the current\ntimestamp will be used"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_no_ambiguities
  doc: Ignore ambiguities  (default=off)
  type: boolean?
  inputBinding:
    prefix: --no-ambiguities
- id: in_no_am_big_resolve
  doc: "Specifies that ambigious symbols should not be\nresolved by nearest neighbor\
    \  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --no-ambig-resolve
- id: in_no_trans_prob
  doc: "Specifies that the transition probabilities\nshould not be used in the ambiguity\
    \ model\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --no-transprob
- id: in_ambiguity_frequency_model
  doc: "Ambiguity frequency model  (possible\nvalues=\"UNI\", \"BASE\" default=`UNI')"
  type: string?
  inputBinding:
    prefix: --ambiguity-frequency-model
- id: in_ts_tv_ratio
  doc: "Transition/transvertion ratio for purine\ntransitions (for the TN model)\n\
    (default=`2.0')"
  type: double?
  inputBinding:
    prefix: --tstvratio
- id: in_pyr_tv_ratio
  doc: "Transition/transvertion ratio for  pyrimidines\ntransitions (for the TN model)\n\
    (default=`2.0')"
  type: double?
  inputBinding:
    prefix: --pyrtvratio
- id: in_no_ts_tv_ratio
  doc: "If given fixed ts/tv ratios will not be used\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --no-tstvratio
- id: in_fix_factor
  doc: "Float specifying what factor to use for\nsaturated data. If not given -1 in\
    \ the entry.\n(default=`1')"
  type: double?
  inputBinding:
    prefix: --fixfactor
- id: in_number_of_runs
  doc: "nr of runs (datasets) in input. This option is\nonly used if the input format\
    \ is\nphylip_multialignment.  (default=`1')"
  type: long?
  inputBinding:
    prefix: --number-of-runs
- id: in_print_relaxng_input
  doc: "print the Relax NG schema for the XML input\nformat (Fastphylo sequence XML\
    \ format) and\nthen exit  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --print-relaxng-input
- id: in_print_relaxng_output
  doc: "print the Relax NG schema for the XML output\nformat (Fastphylo distance matrix\
    \ XML format)\nand then exit.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --print-relaxng-output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "output filename. If not specifed, output is\nwritten to stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- fastdist
