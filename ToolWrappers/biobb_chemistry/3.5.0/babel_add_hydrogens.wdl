version 1.0

task BabelAddHydrogens {
  input {
    File? config
    File? input_path
    File? output_path
  }
  command <<<
    babel_add_hydrogens \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_chemistry:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_path: "Path to the input file. Accepted formats: dat, ent, fa, fasta, gro, inp, log, mcif, mdl, mmcif, mol, mol2, pdb, pdbqt, png, sdf, smi, smiles, txt, xml, xtc."
    output_path: "Path to the output file. Accepted formats: ent, fa, fasta, gro, inp, mcif, mdl, mmcif, mol, mol2, pdb, pdbqt, png, sdf, smi, smiles, txt.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}