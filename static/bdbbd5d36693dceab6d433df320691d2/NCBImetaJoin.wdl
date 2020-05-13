version 1.0

task NCBImetaJoin.py {
  input {
    String databaseDatabase
    String anchorAnchor
    String accessoryAccessory
    String finalFinal
    String uniqueUnique
  }
  command <<<
    NCBImetaJoin.py \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(anchorAnchor) then ("--anchor " +  '"' + anchorAnchor + '"') else ""} \
      ~{if defined(accessoryAccessory) then ("--accessory " +  '"' + accessoryAccessory + '"') else ""} \
      ~{if defined(finalFinal) then ("--final " +  '"' + finalFinal + '"') else ""} \
      ~{if defined(uniqueUnique) then ("--unique " +  '"' + uniqueUnique + '"') else ""}
  >>>
}