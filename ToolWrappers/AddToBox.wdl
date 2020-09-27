version 1.0

task AddToBox {
  input {
    Boolean? molecule_cell_pdb
    Boolean? _molecule_add
    Boolean? na
    Boolean? upper_limit_protein
    File? output_file_pdb
    Boolean? rw
    Boolean? rp
    Boolean? ig
    Boolean? no
    Boolean? grid_spacing_search
    Boolean? recursively_call_addtobox
    Boolean? path
    String added_dot
  }
  command <<<
    AddToBox \
      ~{added_dot} \
      ~{if (molecule_cell_pdb) then "-c" else ""} \
      ~{if (_molecule_add) then "-a" else ""} \
      ~{if (na) then "-na" else ""} \
      ~{if (upper_limit_protein) then "-P" else ""} \
      ~{if (output_file_pdb) then "-o" else ""} \
      ~{if (rw) then "-RW" else ""} \
      ~{if (rp) then "-RP" else ""} \
      ~{if (ig) then "-IG" else ""} \
      ~{if (no) then "-NO" else ""} \
      ~{if (grid_spacing_search) then "-G" else ""} \
      ~{if (recursively_call_addtobox) then "-V" else ""} \
      ~{if (path) then "-path" else ""}
  >>>
  parameter_meta {
    molecule_cell_pdb: ": the molecule cell (PDB format)"
    _molecule_add: ": the molecule to add"
    na: ": the number of copies to add"
    upper_limit_protein: ": the upper limit of protein atoms"
    output_file_pdb: ": output file (PDB format)"
    rw: ": Clipping radius for solvent atoms"
    rp: ": Clipping radius for protein atoms"
    ig: ": Random number seed"
    no: ": flag for no PDB output (stops after determining the\\nprotein fraction of the box)"
    grid_spacing_search: ": Grid spacing for search (default 0.2)"
    recursively_call_addtobox: ": Recursively call AddToBox until all residues have been"
    path: ": Path for AddToBox program on subsequent calls\\n(default ${AMBERHOME}/bin/AddToBox)\\n"
    added_dot: "(Default 0 ; any other setting activates recursion)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_pdb = "${in_output_file_pdb}"
  }
}