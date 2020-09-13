version 1.0

task Rbcalcgrid {
  input {
    Boolean? suffix_grid_is
    Boolean? receptor_param_file
    Boolean? sfprmfile_scoring_function
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
      ~{if (suffix_grid_is) then "-o" else ""} \
      ~{if (receptor_param_file) then "-r" else ""} \
      ~{if (sfprmfile_scoring_function) then "-p" else ""} \
      ~{if (gridstep_grid_step) then "-g" else ""} \
      ~{if (border_grid_border) then "-b" else ""}
  >>>
  parameter_meta {
    suffix_grid_is: "<OutputSuffix> - suffix for grid (.grd IS required)"
    receptor_param_file: "<ReceptorPrmFile> - receptor param file (contains active site params)"
    sfprmfile_scoring_function: "<SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)"
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