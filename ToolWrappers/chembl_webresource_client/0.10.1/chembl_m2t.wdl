version 1.0

task ChemblM2t {
  input {
    File? input_file_standard
    File? output_file_output
    File? source_format
    File? destination_format
    Boolean? human
    String? organism
    Boolean? parent
    Int? chunk_size
  }
  command <<<
    chembl_m2t \
      ~{if defined(input_file_standard) then ("--input " +  '"' + input_file_standard + '"') else ""} \
      ~{if defined(output_file_output) then ("--output " +  '"' + output_file_output + '"') else ""} \
      ~{if defined(source_format) then ("--source-format " +  '"' + source_format + '"') else ""} \
      ~{if defined(destination_format) then ("--destination-format " +  '"' + destination_format + '"') else ""} \
      ~{if (human) then "--Human" else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_standard: "input file, standard input by default"
    output_file_output: "output file, standard output by default"
    source_format: "input file format. Can be one of 3: chembl_id (a comma\\nseparated list of chembl IDs), sdf: (MDL molfile), smi\\n(file containing smiles)"
    destination_format: "output file format. can be chosen from 3 options:\\n[uniprot, gene_name, chembl_id]"
    human: "human readable output: prints header and first column\\nwith original names"
    organism: "Filter results by organism"
    parent: "when fetching targets include also targets from\\nparents of given molecules"
    chunk_size: "Size of chunk of data retrieved from API\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_output = "${in_output_file_output}"
    File out_destination_format = "${in_destination_format}"
  }
}