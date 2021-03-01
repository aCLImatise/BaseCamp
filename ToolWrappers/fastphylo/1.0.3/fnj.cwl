class: CommandLineTool
id: fnj.cwl
inputs:
- id: in_outfile
  doc: "output filename. If not specifed, output is\nwritten to stdout"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_input_format
  doc: "input format. 'xml' means the 'Fastphylo\ndistance matrix XML format'  (possible\n\
    values=\"phylip\", \"xml\", \"binary\"\ndefault=`xml')"
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "output format. 'xml' means the 'Fastphylo tree\ncount XML format'  (possible\n\
    values=\"newick\", \"xml\" default=`xml')"
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_print_counts
  doc: "print the tree count before each the newick\ntree. This flag has no effect\
    \ on the XML\noutput format.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --print-counts
- id: in_analyze_run_number
  doc: "Determines which dataset should be analyzed\nwith 1 being the first dataset.\
    \ By default\nall are analyzed"
  type: long?
  inputBinding:
    prefix: --analyze-run-number
- id: in_method
  doc: "reconstruction method to apply  (possible\nvalues=\"NJ\", \"FNJ\", \"BIONJ\"\
    \ndefault=`FNJ')"
  type: string?
  inputBinding:
    prefix: --method
- id: in_dm_per_run
  doc: "nr of Distance matrices per run. Is only used\nif the input format is phylip\
    \  (default=`1')"
  type: long?
  inputBinding:
    prefix: --dm-per-run
- id: in_number_of_runs
  doc: nr of runs. Is only used if the input format is
  type: long?
  inputBinding:
    prefix: --number-of-runs
- id: in_bootstraps
  doc: number of boot straps  (default=`0')
  type: long?
  inputBinding:
    prefix: --bootstraps
- id: in_print_relaxng_input
  doc: "print the Relax NG schema for the XML input\nformat (Fastphylo distance matrix\
    \ XML format)\nand then exit  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --print-relaxng-input
- id: in_print_relaxng_output
  doc: "print the Relax NG schema for the XML output\nformat (Fastphylo tree count\
    \ XML format) and\nthen exit.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --print-relaxng-output
- id: in_phylip
  doc: (default=`1')
  type: string
  inputBinding:
    position: 0
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
- fnj
