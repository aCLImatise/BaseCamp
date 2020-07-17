version 1.0

task PsassAnalyzeOUTPUTFILE {
  input {
    String ps_ass
    String analyze
    String input_file
    String output_file
  }
  command <<<
    psass analyze OUTPUT_FILE \
      ~{ps_ass} \
      ~{analyze} \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    ps_ass: ""
    analyze: ""
    input_file: ""
    output_file: ""
  }
}