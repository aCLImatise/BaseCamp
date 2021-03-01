class: CommandLineTool
id: mdconvert.cwl
inputs:
- id: in_output
  doc: "path to the save the output. the output format will\nchosen based on the file\
    \ extension (.dcd, .xtc, .trr,\n.binpos, .nc, .netcdf, .h5, .lh5, .pdb)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_chunk
  doc: "number of frames to read in at once. this determines\nthe memory requirements\
    \ of this code. default=1000"
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_force
  doc: force overwrite if output already exsits
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_stride
  doc: "load only every stride-th frame from the input\nfile(s), to subsample."
  type: File?
  inputBinding:
    prefix: --stride
- id: in_index
  doc: "load a *specific* set of frames. flexible, but\ninefficient for a large trajectory.\
    \ specify your\nselection using (pythonic) \"slice notation\" e.g. '-i\nN' to\
    \ load the the Nth frame, '-i -1' will load the\nlast frame, '-i N:M to load frames\
    \ N to M, etc. see\nhttp://bit.ly/143kloq for details on the notation"
  type: long?
  inputBinding:
    prefix: --index
- id: in_atom_indices
  doc: "load only specific atoms from the input file(s).\nprovide a path to file containing\
    \ a space, tab or\nnewline separated list of the (zero-based) integer\nindices\
    \ corresponding to the atoms you wish to keep."
  type: long?
  inputBinding:
    prefix: --atom_indices
- id: in_topology
  doc: "path to a PDB/prmtop file. this will be used to parse\nthe topology of the\
    \ system. it's optional, but useful.\nif specified, it enables you to output the\
    \ coordinates\nof your dcd/xtc/trr/netcdf/binpos as a PDB file. If\nyou're converting\
    \ *to* .h5, the topology will be\nstored inside the h5 file.\n"
  type: File?
  inputBinding:
    prefix: --topology
- id: in_input
  doc: "path to one or more trajectory files. Multiple\ntrajectories, if supplied,\
    \ will be concatenated\ntogether in the output file in the order supplied. all\n\
    of the trajectories should be in the same format. the\nformat will be detected\
    \ based on the file extension"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "path to the save the output. the output format will\nchosen based on the file\
    \ extension (.dcd, .xtc, .trr,\n.binpos, .nc, .netcdf, .h5, .lh5, .pdb)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_topology
  doc: "path to a PDB/prmtop file. this will be used to parse\nthe topology of the\
    \ system. it's optional, but useful.\nif specified, it enables you to output the\
    \ coordinates\nof your dcd/xtc/trr/netcdf/binpos as a PDB file. If\nyou're converting\
    \ *to* .h5, the topology will be\nstored inside the h5 file.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_topology)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mdtraj:1.9.4
cwlVersion: v1.1
baseCommand:
- mdconvert
