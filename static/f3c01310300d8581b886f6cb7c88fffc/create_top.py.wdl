version 1.0

task CreateToppy {
  input {
    File? input_pdb_file
    Directory? output_directory
    Boolean? v_site
  }
  command <<<
    create_top_py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (v_site) then "-vsite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_pdb_file: "Input PDB file"
    output_directory: "Output directory"
    v_site: "Use virtual site for hydrogens"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}