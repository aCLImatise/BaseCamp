version 1.0

task MapToSlim.py {
  input {
    String termTerm
    String associationAssociationFile
    String slimSlimOut
    String? goGoOboFile
    String? goGoSlimOboFile
  }
  command <<<
    map_to_slim.py \
      ~{goGoOboFile} \
      ~{if defined(termTerm) then ("--term " +  '"' + termTerm + '"') else ""} \
      ~{if defined(associationAssociationFile) then ("--association_file " +  '"' + associationAssociationFile + '"') else ""} \
      ~{if defined(slimSlimOut) then ("--slim_out " +  '"' + slimSlimOut + '"') else ""} \
      ~{goGoSlimOboFile}
  >>>
}