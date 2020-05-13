version 1.0

task KneaddataReadCountTable {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    kneaddata_read_count_table \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}