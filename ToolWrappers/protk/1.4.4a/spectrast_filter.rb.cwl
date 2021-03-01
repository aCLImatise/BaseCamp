class: CommandLineTool
id: spectrast_filter.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_binary_output
  doc: Produce spectral libraries in binary format rather than ASCII [false]
  type: boolean?
  inputBinding:
    prefix: --binary-output
- id: in_predicate
  doc: Keep only spectra satifying predicate pred. Should be a C-style predicate
  type: string?
  inputBinding:
    prefix: --predicate
- id: in_merge
  doc: "How to combine multiple splib files (if provided). Options are U,S,H\nU: Union.\
    \ Include all the peptide ions in all the files.\nS: Subtraction. Only include\
    \ peptide ions in the first file\nthat are not present in any of the other files.\n\
    H: Subtraction of homologs. Only include peptide ions in the\nfirst file that\
    \ do not have any homologs with\nsame charge and similar m/z in any of the other\
    \ files.\nA: Appending. Each peptide ion is added from only one library:\nthe\
    \ first file in the argument list that contains that peptide ion.\nUseful for\
    \ keeping existing consensus spectra unchanged while adding\nonly previously unseen\
    \ peptide ions. [U]"
  type: File?
  inputBinding:
    prefix: --merge
- id: in_replicates
  doc: "How to derive a single spectrum from replicates. Options are None, C,B\nC:\
    \ Consensus. Create the consensus spectrum of all replicate spectra of each peptide\
    \ ion.\nB: Best replicate. Pick the best replicate of each peptide ion. [None]\n"
  type: string?
  inputBinding:
    prefix: --replicates
- id: in_file_one_dots_plib
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- spectrast_filter.rb
