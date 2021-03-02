version 1.0

task GetWqb {
  input {
    Directory? dir
    String? ligand
    String? ligand_output_mol
  }
  command <<<
    get_wqb \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(ligand_output_mol) then ("--output " +  '"' + ligand_output_mol + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Directory with location of OpenDUck data"
    ligand: "Ligand in mol format"
    ligand_output_mol: "Ligand output in mol forma, with wqb value\\n"
  }
  output {
    File out_stdout = stdout()
  }
}