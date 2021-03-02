class: CommandLineTool
id: fastprot.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_outfile
  doc: "output filename. If not specified, output is\nwritten to stdout"
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
- id: in_bootstraps
  doc: "Bootstrap num times and create matrix for each\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --bootstraps
- id: in_no_incl_orig
  doc: "If the distance matrix from the original\nsequences should NOT be included\
    \ - for\nbootstrapping  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --no-incl-orig
- id: in_seed
  doc: "Random seed. If not specified the current\ntimestamp will be used"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_distance_function
  doc: "Distance function  (possible values=\"ID\",\n\"JC\", \"JCK\", \"JCSS\", \"\
    WAG\", \"JTT\",\n\"DAY\", \"ARVE\", \"MVR\", \"LG\"\ndefault=`WAG')"
  type: string?
  inputBinding:
    prefix: --distance-function
- id: in_model_file
  doc: "Read matrix and equilibrium distribution from\nfile, when used --distance-function\
    \ is\ndisregarded"
  type: File?
  inputBinding:
    prefix: --model-file
- id: in_remove_indels
  doc: "Remove gap columns. A gap is denoted by '-'.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --remove-indels
- id: in_maximum_likelihood
  doc: "Compute a Maximum Likelihood estimate instead.\nCan not be used with --distance-function=ID,\n\
    JC, JCK or JCSS or --sd  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --maximum-likelihood
- id: in_sd
  doc: "Not yet implemented! Output a matrix with\nstandard deviations after the distance\n\
    matrix. Can not be used with\n--distance-function=ID, JC, JCK or JCSS or\n--maximum-likelihood\
    \  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --sd
- id: in_pfam
  doc: "use a normal distribution as distance prior,\nestimated from Pfam 7.2  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --pfam
- id: in_speed
  doc: "'Speed'. High speed results in low precision,\nonly affects ED calculations.\
    \ Default is 5.\nValid range is [1,10].  (possible\nvalues=\"1\", \"2\", \"3\"\
    , \"4\", \"5\",\n\"6\", \"7\", \"8\" default=`4')"
  type: long?
  inputBinding:
    prefix: --speed
- id: in_print_relaxng_input
  doc: "print the Relax NG schema for the XML input\nformat (Fastphylo protein sequence\
    \ XML\nformat) and then exit  (default=off)"
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
  doc: "output filename. If not specified, output is\nwritten to stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- fastprot
