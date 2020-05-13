version 1.0

task VinaSplit {
  input {
    String inputInput
    String ligandLigand
    String flexFlex
  }
  command <<<
    vina_split \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(flexFlex) then ("--flex " +  '"' + flexFlex + '"') else ""}
  >>>
}