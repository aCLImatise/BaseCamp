version 1.0

task ChemblT2m {
  input {
    File? input_file_standard
    File? output_file_output
    File? destination_format
    Boolean? human
    Boolean? parent
    Int? chunk_size
  }
  command <<<
    chembl_t2m \
      ~{if defined(input_file_standard) then ("--input " +  '"' + input_file_standard + '"') else ""} \
      ~{if defined(output_file_output) then ("--output " +  '"' + output_file_output + '"') else ""} \
      ~{if defined(destination_format) then ("--destination-format " +  '"' + destination_format + '"') else ""} \
      ~{if (human) then "--Human" else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_standard: "input file, standard input by default"
    output_file_output: "output file, standard output by default"
    destination_format: "output file format. can be chosen from 3 options:\\n[sdf, smi, chembl_id]"
    human: "human readable output: prints header and first column\\nwith original names"
    parent: "when fetching compounds include their parents as well"
    chunk_size: "Size of chunk of data retrieved from API\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_output = "${in_output_file_output}"
    File out_destination_format = "${in_destination_format}"
  }
}