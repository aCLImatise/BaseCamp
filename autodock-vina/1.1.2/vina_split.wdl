version 1.0

task VinaSplit {
  input {
    String? input_split_pdbqt
    String? ligand
    String? flex
    String var_3
  }
  command <<<
    vina_split \
      ~{var_3} \
      ~{if defined(input_split_pdbqt) then ("--input " +  '"' + input_split_pdbqt + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(flex) then ("--flex " +  '"' + flex + '"') else ""}
  >>>
  parameter_meta {
    input_split_pdbqt: "input to split (PDBQT)"
    ligand: "prefix for ligands"
    flex: "prefix for side chains"
    var_3: ""
  }
}