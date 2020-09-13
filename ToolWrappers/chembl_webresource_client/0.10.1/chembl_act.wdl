version 1.0

task ChemblAct {
  input {
    File? input_file_names
    File? output_file_chembl
    String ch_embl_ids
  }
  command <<<
    chembl_act \
      ~{ch_embl_ids} \
      ~{if defined(input_file_names) then ("--input " +  '"' + input_file_names + '"') else ""} \
      ~{if defined(output_file_chembl) then ("--output " +  '"' + output_file_chembl + '"') else ""}
  >>>
  parameter_meta {
    input_file_names: "input file with names, one line each"
    output_file_chembl: "output file with ChEMBL IDs\\n"
    ch_embl_ids: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_chembl = "${in_output_file_chembl}"
  }
}