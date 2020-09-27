version 1.0

task Findspl {
  input {
    Boolean? gi_number_protein
    Boolean? input_file_containing
    File? output_file_default
  }
  command <<<
    findspl \
      ~{if (gi_number_protein) then "-g" else ""} \
      ~{if (input_file_containing) then "-i" else ""} \
      ~{if (output_file_default) then "-o" else ""}
  >>>
  parameter_meta {
    gi_number_protein: "Gi number of protein [Integer]\\ndefault = 0\\nrange from 1 to 99999999"
    input_file_containing: "Input file containing protein GIs [File In]\\ndefault = stdin"
    output_file_default: "Output file [File Out]\\ndefault = stdout\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}