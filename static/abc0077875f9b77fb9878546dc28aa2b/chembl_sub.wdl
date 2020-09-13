version 1.0

task ChemblSub {
  input {
    File? input_file_chembl
    File? output_file_chembl
    File? source_format
    File? destination_format
    Boolean? human
    String ch_embl_sim
  }
  command <<<
    chembl_sub \
      ~{ch_embl_sim} \
      ~{if defined(input_file_chembl) then ("--input " +  '"' + input_file_chembl + '"') else ""} \
      ~{if defined(output_file_chembl) then ("--output " +  '"' + output_file_chembl + '"') else ""} \
      ~{if defined(source_format) then ("--source-format " +  '"' + source_format + '"') else ""} \
      ~{if defined(destination_format) then ("--destination-format " +  '"' + destination_format + '"') else ""} \
      ~{if (human) then "--Human" else ""}
  >>>
  parameter_meta {
    input_file_chembl: "input file with ChEMBL IDs"
    output_file_chembl: "output file with ChEMBL IDs of similar molecules"
    source_format: "input file format. Can be one of 3: chembl_id (a comma\\nseparated list of chembl IDs), sdf: (MDL molfile), smi\\n(file containing smiles)"
    destination_format: "output file format. can be chosen from 5 options:\\n[chembl_id, smi, sdf, inchi, inchi_key]"
    human: "human readable output: prints header and first column\\nwith original names\\n"
    ch_embl_sim: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_chembl = "${in_output_file_chembl}"
    File out_destination_format = "${in_destination_format}"
  }
}