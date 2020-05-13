version 1.0

task AddDescriptions.py {
  input {
    File inputInput
    File outputOutput
    String mapMapType
    File customCustomMapTable
  }
  command <<<
    add_descriptions.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(mapMapType) then ("--map_type " +  '"' + mapMapType + '"') else ""} \
      ~{if defined(customCustomMapTable) then ("--custom_map_table " +  '"' + customCustomMapTable + '"') else ""}
  >>>
}