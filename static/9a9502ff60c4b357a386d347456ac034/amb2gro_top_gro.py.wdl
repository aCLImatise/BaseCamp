version 1.0

task Amb2groTopGropy {
  input {
    File? prmtop_file
    File? inpcrd_file
    File? gromacs_top_file
    File? gromacs_gro_file
    File? pdb_file_generate
  }
  command <<<
    amb2gro_top_gro_py \
      ~{if defined(prmtop_file) then ("-p " +  '"' + prmtop_file + '"') else ""} \
      ~{if defined(inpcrd_file) then ("-c " +  '"' + inpcrd_file + '"') else ""} \
      ~{if defined(gromacs_top_file) then ("-t " +  '"' + gromacs_top_file + '"') else ""} \
      ~{if defined(gromacs_gro_file) then ("-g " +  '"' + gromacs_gro_file + '"') else ""} \
      ~{if defined(pdb_file_generate) then ("-b " +  '"' + pdb_file_generate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prmtop_file: "Prmtop file"
    inpcrd_file: "Inpcrd file"
    gromacs_top_file: "GROMACS top file"
    gromacs_gro_file: "GROMACS gro file"
    pdb_file_generate: "A PDB file to generate"
  }
  output {
    File out_stdout = stdout()
  }
}