class: CommandLineTool
id: OligoWalk.cwl
inputs:
- id: in_dna
  doc: Indicate that the oligomers are DNA (as opposed to RNA).
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_html
  doc: Write the report in HTML mode instead of plain text.
  type: boolean
  inputBinding:
    prefix: --html
- id: in_no_header
  doc: "Do not include a list of the parameters used in the\ncalulation in the output\
    \ report file."
  type: File
  inputBinding:
    prefix: --no-header
- id: in_score
  doc: Score the siRNA prefilter.
  type: boolean
  inputBinding:
    prefix: -score
- id: in_web_server
  doc: "Use special output for running OligoWalk as a webserver.\nThis implies HTML=true\
    \ and it sends the header (which lists the\nparameters that were used in the calulation)\
    \ to STDOUT instead of\nincluding them in the report. It also turns off progress\
    \ updates."
  type: boolean
  inputBinding:
    prefix: --webserver
- id: in_write
  doc: Write sav files to save time in test mode.
  type: boolean
  inputBinding:
    prefix: -write
- id: in_conc
  doc: "Molar concentration of oligos. E.g. \"1.5E-6\", \"1.5uM\", or \"0.0000015\"\
    .\nUnit Abbreviations: mM=10^-3 uM=10^-6, nM=10^-9, pM=10^-12\nThis may be used\
    \ in conjunction with the '--unit' flag: --conc 1.5 --unit\n-6 (1.5 micromolar)."
  type: boolean
  inputBinding:
    prefix: --conc
- id: in_dist
  doc: Limit the maximum distance between nucleotides that can pair.
  type: boolean
  inputBinding:
    prefix: -dist
- id: in_end
  doc: End position of folding region of target.
  type: boolean
  inputBinding:
    prefix: --end
- id: in_filter
  doc: "Whether to use the siRNA prefilter to prefill functional siRNA.\n0=No Prefilter;\
    \ 1=Use Prefilter"
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_fold
  doc: "Only fold a fragment with the specified size (plus the length of\nthe oligomer),\
    \ which is centered on the binding region.\nWhen FOLD_SIZE > 1, MODE (-m) and\
    \ SUBOPTIMAL (-s) must both be 2."
  type: boolean
  inputBinding:
    prefix: -fold
- id: in_length
  doc: Length of oligomers for hybridization.
  type: boolean
  inputBinding:
    prefix: --length
- id: in_mode
  doc: "Determines how target structure is used:\n1=Break Local Structure.\n2=Refold\
    \ target RNA after oligo binding.\n3=No target structure considered."
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_suboptimal
  doc: "Determines suboptimal structure options:\n0=Do not consider suboptimal structures.\n\
    1=Use AllSub to generate suboptimal structures.\n2=Use Partition Function to generate\
    \ all suboptimal structures.\n3=Use a heuristic method for both oligo-free and\
    \ oligo-bound RNA.\n4=Use stochastic sampling to generate 1000 structures."
  type: boolean
  inputBinding:
    prefix: --suboptimal
- id: in_to
  doc: End position of scanning on folded region of target.
  type: boolean
  inputBinding:
    prefix: --to
- id: in_shape
  doc: Specify a SHAPE data file.
  type: boolean
  inputBinding:
    prefix: --shape
- id: in_from
  doc: Start position of scanning on folded region of target.
  type: boolean
  inputBinding:
    prefix: --from
- id: in_start
  doc: Start position of folding region of target.
  type: boolean
  inputBinding:
    prefix: --start
- id: in_test
  doc: "Perform self-tests. The parameter should be a list of space-separated test\n\
    numbers, e.g.: -test '1 2 5'"
  type: boolean
  inputBinding:
    prefix: -test
- id: in_unit
  doc: "Specifies a power-of-ten to multiply the concentration by.\nFor example \"\
    -co 3 -unit -6\" is equal to \"-co 3uM\" or \"-co 3E-6\"\n"
  type: boolean
  inputBinding:
    prefix: --unit
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_report_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_header
  doc: "Do not include a list of the parameters used in the\ncalulation in the output\
    \ report file."
  type: File
  outputBinding:
    glob: $(inputs.in_no_header)
cwlVersion: v1.1
baseCommand:
- OligoWalk
