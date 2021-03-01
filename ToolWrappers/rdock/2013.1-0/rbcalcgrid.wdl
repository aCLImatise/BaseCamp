version 1.0

task Rbcalcgrid {
  input {
    Boolean? outputsuffix_suffix_grid
    Boolean? receptorprmfile_receptor_param
    Boolean? scoring_function_param
    Boolean? gridstep_grid_step
    Boolean? border_grid_border
    String output_root
    String receptor_prm_file
    String sfp_rm_file
    String? grid_step
  }
  command <<<
    rbcalcgrid \
      ~{output_root} \
      ~{receptor_prm_file} \
      ~{sfp_rm_file} \
      ~{grid_step} \
      ~{if (outputsuffix_suffix_grid) then "-o" else ""} \
      ~{if (receptorprmfile_receptor_param) then "-r" else ""} \
      ~{if (scoring_function_param) then "-p" else ""} \
      ~{if (gridstep_grid_step) then "-g" else ""} \
      ~{if (border_grid_border) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outputsuffix_suffix_grid: "<OutputSuffix> - suffix for grid (.grd IS required)"
    receptorprmfile_receptor_param: "<ReceptorPrmFile> - receptor param file (contains active site params)"
    scoring_function_param: "<SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)"
    gridstep_grid_step: "<GridStep> - grid step (default=0.5A)"
    border_grid_border: "<Border> - grid border around docking site (default=1.0A)"
    output_root: ""
    receptor_prm_file: ""
    sfp_rm_file: ""
    grid_step: ""
  }
  output {
    File out_stdout = stdout()
  }
}