class: CommandLineTool
id: trf4.10.0_rc.2.linux64.exe.cwl
inputs:
- id: in_masked_sequence_file
  doc: masked sequence file
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_flanking_sequence
  doc: flanking sequence
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_data_file
  doc: data file
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_no_redundancy_elimination
  doc: no redundancy elimination
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_maximum_tr_length
  doc: "maximum TR length expected (in millions) (eg, -l 3 or -l=3 for 3 million)\n\
    Human genome HG38 would need -l 6"
  type: long?
  inputBinding:
    prefix: -l
- id: in_ngs
  doc: "more compact .dat output on multisequence files, returns 0 on success.\nOutput\
    \ is printed to the screen, not a file. You may pipe input in with\nthis option\
    \ using - for file name. Short 50 flanks are appended to .dat\noutput."
  type: boolean?
  inputBinding:
    prefix: -ngs
- id: in_match
  doc: = matching weight
  type: string
  inputBinding:
    position: 0
- id: in_mismatch
  doc: = mismatching penalty
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trf:4.09.1--h516909a_0
cwlVersion: v1.1
baseCommand:
- trf4.10.0-rc.2.linux64.exe
