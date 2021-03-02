version 1.0

task Mdconvert {
  input {
    File? path_save_output
    Int? chunk
    Boolean? force
    File? stride
    Int? index
    Int? atom_indices
    File? topology
    String path_one_more
  }
  command <<<
    mdconvert \
      ~{path_one_more} \
      ~{if defined(path_save_output) then ("--output " +  '"' + path_save_output + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(atom_indices) then ("--atom_indices " +  '"' + atom_indices + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mdtraj:1.9.4"
  }
  parameter_meta {
    path_save_output: "path to the save the output. the output format will\\nchosen based on the file extension (.dcd, .xtc, .trr,\\n.binpos, .nc, .netcdf, .h5, .lh5, .pdb)"
    chunk: "number of frames to read in at once. this determines\\nthe memory requirements of this code. default=1000"
    force: "force overwrite if output already exsits"
    stride: "load only every stride-th frame from the input\\nfile(s), to subsample."
    index: "load a *specific* set of frames. flexible, but\\ninefficient for a large trajectory. specify your\\nselection using (pythonic) \\\"slice notation\\\" e.g. '-i\\nN' to load the the Nth frame, '-i -1' will load the\\nlast frame, '-i N:M to load frames N to M, etc. see\\nhttp://bit.ly/143kloq for details on the notation"
    atom_indices: "load only specific atoms from the input file(s).\\nprovide a path to file containing a space, tab or\\nnewline separated list of the (zero-based) integer\\nindices corresponding to the atoms you wish to keep."
    topology: "path to a PDB/prmtop file. this will be used to parse\\nthe topology of the system. it's optional, but useful.\\nif specified, it enables you to output the coordinates\\nof your dcd/xtc/trr/netcdf/binpos as a PDB file. If\\nyou're converting *to* .h5, the topology will be\\nstored inside the h5 file.\\n"
    path_one_more: "path to one or more trajectory files. Multiple\\ntrajectories, if supplied, will be concatenated\\ntogether in the output file in the order supplied. all\\nof the trajectories should be in the same format. the\\nformat will be detected based on the file extension"
  }
  output {
    File out_stdout = stdout()
    File out_path_save_output = "${in_path_save_output}"
    File out_topology = "${in_topology}"
  }
}