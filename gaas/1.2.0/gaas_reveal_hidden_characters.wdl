version 1.0

task GaasRevealHiddenCharacters.pl {
  input {
    String? in_file
    String? desc
    String? output_file_output
  }
  command <<<
    gaas_reveal_hidden_characters.pl \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(output_file_output) then ("--output " +  '"' + output_file_output + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Input file containing DNA."
    desc: "Specify extra information/description you want for the character. Choice must be among <DEC>, <OCT>, <HEX>, <BIN>, <Symbol_HTML>, <Number_HTML>, <Name> and <Description>. Whithout the <> characters. The option is case insensitive. By default it is <Description>."
    output_file_output: "[OPTIONAL] Output file. If no output is specified, the result is written to STDOUT."
  }
}