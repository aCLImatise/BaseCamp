class: CommandLineTool
id: LoRMA.cwl
inputs:
- id: in_best_friends
  doc: "(1 arg) :    Number of best friends  [default '3']"
  type: boolean?
  inputBinding:
    prefix: -bestfriends
- id: in_friends
  doc: "(1 arg) :    Number of friends  [default '7']"
  type: boolean?
  inputBinding:
    prefix: -friends
- id: in_arg_kmer_length
  doc: "(1 arg) :    kmer length  [default '31']"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_discarded
  doc: '(1 arg) :    output file for discarded reads'
  type: File?
  inputBinding:
    prefix: -discarded
- id: in_output
  doc: '(1 arg) :    output file for corrected reads'
  type: File?
  inputBinding:
    prefix: -output
- id: in_reads
  doc: '(1 arg) :    file(s) of long reads'
  type: boolean?
  inputBinding:
    prefix: -reads
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_discarded
  doc: '(1 arg) :    output file for discarded reads'
  type: File?
  outputBinding:
    glob: $(inputs.in_discarded)
- id: out_output
  doc: '(1 arg) :    output file for corrected reads'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- LoRMA
