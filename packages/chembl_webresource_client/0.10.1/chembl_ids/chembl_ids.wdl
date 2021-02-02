version 1.0

task ChemblIds {
  input {
    File? input_file_input
    File? output_file_output
    File? format
    Boolean? single
    Boolean? parent
    Boolean? human
  }
  command <<<
    chembl_ids \
      ~{if defined(input_file_input) then ("--input " +  '"' + input_file_input + '"') else ""} \
      ~{if defined(output_file_output) then ("--output " +  '"' + output_file_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if (human) then "--Human" else ""}
  >>>
  parameter_meta {
    input_file_input: "input file, standard input by default"
    output_file_output: "output file, standard output by default"
    format: "output file format, can be chosen from 5 options:\\n[chembl_id, smi, sdf, inchi, inchi_key]"
    single: "if the name is resolved into more than one result,\\nshow only the most relevant one"
    parent: "instead of actual results, fetch their parents"
    human: "human readable output: prints header and first column\\nwith original names\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_output = "${in_output_file_output}"
    File out_format = "${in_format}"
  }
}