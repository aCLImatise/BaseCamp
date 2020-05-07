version 1.0

task GetWqb {
  input {
    String dirDir
    String ligandLigand
    String outputOutput
  }
  command <<<
    get_wqb \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}