version 1.0

task Rbmoegrid {
  input {
    String? output_file_name
    String? receptor_param
    String? sf_param
    String? grid_step
    String? grid_border
    String? tripos_atom_type
    String? option_dot_dot_dot
  }
  command <<<
    rbmoegrid \
      ~{option_dot_dot_dot} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{if defined(sf_param) then ("--sf-param " +  '"' + sf_param + '"') else ""} \
      ~{if defined(grid_step) then ("--grid-step " +  '"' + grid_step + '"') else ""} \
      ~{if defined(grid_border) then ("--grid-border " +  '"' + grid_border + '"') else ""} \
      ~{if defined(tripos_atom_type) then ("--tripos-atom-type " +  '"' + tripos_atom_type + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name prefix (.grd is suffixed) (default: moegrid)"
    receptor_param: "receptor param file(s) (contain active site params, can be specified multiple times)"
    sf_param: "scoring function param file (default: calcgrid_vdw.prm)"
    grid_step: "grid step (in angstrom) (default: 0.5)"
    grid_border: "grid border around docking site (in angstrom) (default: 1.0)"
    tripos_atom_type: "Tripos atom type (default: C.3)"
    option_dot_dot_dot: ""
  }
}