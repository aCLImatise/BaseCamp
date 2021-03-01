version 1.0

task PrepareLigand4py {
  input {
    Boolean? ligandfilename_pdb_format
  }
  command <<<
    prepare_ligand4_py \
      ~{if (ligandfilename_pdb_format) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ligandfilename_pdb_format: "ligand_filename (.pdb or .mol2 or .pdbq format)"
  }
  output {
    File out_stdout = stdout()
  }
}