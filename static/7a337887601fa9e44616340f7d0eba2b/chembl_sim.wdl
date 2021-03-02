version 1.0

task ChemblSim {
  input {
    File? input_file_standard
    File? output_file_output
    Int? threshold
    File? source_format
    File? destination_format
    Boolean? human
  }
  command <<<
    chembl_sim \
      ~{if defined(input_file_standard) then ("--input " +  '"' + input_file_standard + '"') else ""} \
      ~{if defined(output_file_output) then ("--output " +  '"' + output_file_output + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(source_format) then ("--source-format " +  '"' + source_format + '"') else ""} \
      ~{if defined(destination_format) then ("--destination-format " +  '"' + destination_format + '"') else ""} \
      ~{if (human) then "--Human" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_standard: "input file, standard input by default"
    output_file_output: "output file, standard output by default"
    threshold: "similarity threshold a number from range [70-100], 95\\nis a default value"
    source_format: "input file format. Can be one of 3: chembl_id (a comma\\nseparated list of chembl IDs), sdf: (MDL molfile), smi\\n(file containing smiles)"
    destination_format: "output file format. can be chosen from 5 options:\\n[chembl_id, smi, sdf, inchi, inchi_key]"
    human: "human readable output: prints header and first column\\nwith original names\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_output = "${in_output_file_output}"
    File out_destination_format = "${in_destination_format}"
  }
}