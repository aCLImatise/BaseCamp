class: CommandLineTool
id: ../../../super_distance.cwl
inputs:
- id: in_fast
  doc: for too many leaves, estimates only two species trees
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_epsilon
  doc: tolerance (small value below which a branch length is considered zero for nodal
    distances)
  type: long
  inputBinding:
    prefix: --epsilon
- id: in_species
  doc: file with species names, one per line (comments in square braces allowed);
    if absent, orthology is assumed
  type: File
  inputBinding:
    prefix: --species
- id: in_output
  doc: output file with species supertrees, in newick format (default '-')
  type: File
  inputBinding:
    prefix: --output
- id: in_super_distance
  doc: '[-h|--help] [-v|--version] [-F|--fast] [-e|--epsilon=<double>] [-s|--species=<species
    names>] [-o|--output=<newick>] <file> [<file>]...'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file with species supertrees, in newick format (default '-')
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- super_distance
