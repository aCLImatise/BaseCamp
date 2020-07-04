version 1.0

task PrepareLigand4.py {
  input {
    Boolean? ligandfilename_pdb_pdbq
  }
  command <<<
    prepare_ligand4.py \
      ~{true="-l" false="" ligandfilename_pdb_pdbq}
  >>>
  parameter_meta {
    ligandfilename_pdb_pdbq: "ligand_filename (.pdb or .mol2 or .pdbq format)"
  }
}