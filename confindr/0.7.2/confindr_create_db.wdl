version 1.0

task ConfindrCreateDb {
  input {
    String outputOutputFolder
    String inputInputFolder
    String genusGenus
    String desiredDesiredNumberGenes
  }
  command <<<
    confindr_create_db \
      ~{if defined(outputOutputFolder) then ("--output_folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(inputInputFolder) then ("--input_folder " +  '"' + inputInputFolder + '"') else ""} \
      ~{if defined(genusGenus) then ("--genus " +  '"' + genusGenus + '"') else ""} \
      ~{if defined(desiredDesiredNumberGenes) then ("--desired_number_genes " +  '"' + desiredDesiredNumberGenes + '"') else ""}
  >>>
}