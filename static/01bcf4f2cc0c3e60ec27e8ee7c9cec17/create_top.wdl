version 1.0

task CreateTop.py {
  input {
    String? input_pdb_file
    String? output_directory
    Boolean? v_site
  }
  command <<<
    create_top.py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{true="-vsite" false="" v_site}
  >>>
  parameter_meta {
    input_pdb_file: "Input PDB file"
    output_directory: "Output directory"
    v_site: "Use virtual site for hydrogens"
  }
}