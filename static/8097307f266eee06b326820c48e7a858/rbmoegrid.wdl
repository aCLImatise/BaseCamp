version 1.0

task Rbmoegrid {
  input {
    File? output_file_name
    File? receptor_param
    File? sf_param
    Float? grid_step
    Float? grid_border
    Float? tripos_atom_type
  }
  command <<<
    rbmoegrid \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{if defined(sf_param) then ("--sf-param " +  '"' + sf_param + '"') else ""} \
      ~{if defined(grid_step) then ("--grid-step " +  '"' + grid_step + '"') else ""} \
      ~{if defined(grid_border) then ("--grid-border " +  '"' + grid_border + '"') else ""} \
      ~{if defined(tripos_atom_type) then ("--tripos-atom-type " +  '"' + tripos_atom_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "output file name prefix (.grd is suffixed)\\n(default: moegrid)"
    receptor_param: "receptor param file(s) (contain active site\\nparams, can be specified multiple times)"
    sf_param: "scoring function param file (default:\\ncalcgrid_vdw.prm)"
    grid_step: "grid step (in angstrom) (default: 0.5)"
    grid_border: "grid border around docking site (in angstrom)\\n(default: 1.0)"
    tripos_atom_type: "Tripos atom type (default: C.3)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}