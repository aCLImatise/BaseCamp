version 1.0

task ConvertTable.py {
  input {
    String outputOutput
    String conversionConversion
    Boolean rawRawAbun
    String? inputInput
  }
  command <<<
    convert_table.py \
      ~{inputInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(conversionConversion) then ("--conversion " +  '"' + conversionConversion + '"') else ""} \
      ~{true="--raw_abun" false="" rawRawAbun}
  >>>
}