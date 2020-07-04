version 1.0

task InsertMolNoVmd.py {
  input {
    String? f_sys
    String? p_sys
    String? fmol
    String? pmol
    String? nmol
    String? output_directory
    String? output_file_name
  }
  command <<<
    insert_mol_no_vmd.py \
      ~{if defined(f_sys) then ("-fsys " +  '"' + f_sys + '"') else ""} \
      ~{if defined(p_sys) then ("-psys " +  '"' + p_sys + '"') else ""} \
      ~{if defined(fmol) then ("-fmol " +  '"' + fmol + '"') else ""} \
      ~{if defined(pmol) then ("-pmol " +  '"' + pmol + '"') else ""} \
      ~{if defined(nmol) then ("-nmol " +  '"' + nmol + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    f_sys: "Input PDB file of the system"
    p_sys: "Topologie in gromacs format .top of the system"
    fmol: "Input PDB file of the molecule to insert"
    pmol: "Topologie in gromacs format .top of the molecule to insert"
    nmol: "Number of molecule to insert"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
  }
}