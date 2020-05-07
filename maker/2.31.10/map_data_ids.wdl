version 1.0

task MapDataIds {
  input {
    String? colCol
    String? delimitDelimit
  }
  command <<<
    map_data_ids \
      ~{colCol} \
      ~{delimitDelimit}
  >>>
}