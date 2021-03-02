class: CommandLineTool
id: xtractore.cwl
inputs:
- id: in_debug
  doc: print debugging output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_id_file
  doc: ": FILE     file containing a list of feature IDs (1 per line\nwith no spaces);\
    \ if provided, only features with\nIDs in this file will be extracted"
  type: boolean?
  inputBinding:
    prefix: --idfile
- id: in_outfile
  doc: ": FILE    file to which output sequences will be written;\ndefault is terminal\
    \ (stdout)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_type
  doc: ": STRING     feature type to extract; can be used multiple\ntimes to extract\
    \ features of multiple types"
  type: boolean?
  inputBinding:
    prefix: --type
- id: in_verbose
  doc: print verbose warning and error messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_width
  doc: ": INT       width of each line of sequence in the Fasta\noutput; default is\
    \ 80; set to 0 for no\nformatting\n"
  type: boolean?
  inputBinding:
    prefix: --width
- id: in_features_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_sequences_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ": FILE    file to which output sequences will be written;\ndefault is terminal\
    \ (stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- xtractore
