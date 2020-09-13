version 1.0

task PrepareLigand4py {
  input {
    Boolean? ligandfilename_pdbq_format
  }
  command <<<
    prepare_ligand4_py \
      ~{if (ligandfilename_pdbq_format) then "-l" else ""}
  >>>
  parameter_meta {
    ligandfilename_pdbq_format: "ligand_filename (.pdb or .mol2 or .pdbq format)"
  }
  output {
    File out_stdout = stdout()
  }
}