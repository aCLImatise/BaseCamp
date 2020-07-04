version 1.0

task MapDataIds {
  input {
    String col
    String delimit
  }
  command <<<
    map_data_ids \
      ~{col} \
      ~{delimit}
  >>>
  parameter_meta {
    col: "The column number (1 based) in the data file that corresponds to old_name in the mapping file."
    delimit: "The delimeter for the data file."
  }
}