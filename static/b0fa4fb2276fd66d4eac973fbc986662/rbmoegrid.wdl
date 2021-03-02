version 1.0

task Rbmoegrid {
  input {
    File? grd_is_suffixed
    File? receptor_param_file
    File? scoring_function_param
    Float? grid_step_defaulta
    Float? grid_border_defaulta
    Float? tripos_atom_default
  }
  command <<<
    rbmoegrid \
      ~{if defined(grd_is_suffixed) then ("-o " +  '"' + grd_is_suffixed + '"') else ""} \
      ~{if defined(receptor_param_file) then ("-r " +  '"' + receptor_param_file + '"') else ""} \
      ~{if defined(scoring_function_param) then ("-p " +  '"' + scoring_function_param + '"') else ""} \
      ~{if defined(grid_step_defaulta) then ("-g " +  '"' + grid_step_defaulta + '"') else ""} \
      ~{if defined(grid_border_defaulta) then ("-b " +  '"' + grid_border_defaulta + '"') else ""} \
      ~{if defined(tripos_atom_default) then ("-t " +  '"' + tripos_atom_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    grd_is_suffixed: "(.grd is suffixed)"
    receptor_param_file: "- receptor param file (contains active site params)"
    scoring_function_param: "- scoring function param file (default calcgrid_vdw.prm)"
    grid_step_defaulta: "- grid step (default=0.5A)"
    grid_border_defaulta: "- grid border around docking site (default=1.0A)"
    tripos_atom_default: "- Tripos atom type (default is C.3)"
  }
  output {
    File out_stdout = stdout()
    File out_grd_is_suffixed = "${in_grd_is_suffixed}"
  }
}