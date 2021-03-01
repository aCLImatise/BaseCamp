class: CommandLineTool
id: unitig_counter.cwl
inputs:
- id: in_gzip
  doc: '(0 arg) :    Compress unitig output using gzip.'
  type: boolean?
  inputBinding:
    prefix: -gzip
- id: in_strains
  doc: '(1 arg) :    A text file describing the strains containing 2 columns: 1) ID
    of the strain; 2) Path to a multi-fasta file containing the sequences of the strain.
    This file needs a header.'
  type: boolean?
  inputBinding:
    prefix: -strains
- id: in_arg_kmer_size
  doc: "(1 arg) :    K-mer size.  [default '31']"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_output
  doc: "(1 arg) :    Path to the folder where the final and temporary files will be\
    \ stored.  [default 'output']"
  type: File?
  inputBinding:
    prefix: -output
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "(1 arg) :    Path to the folder where the final and temporary files will be\
    \ stored.  [default 'output']"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- unitig-counter
