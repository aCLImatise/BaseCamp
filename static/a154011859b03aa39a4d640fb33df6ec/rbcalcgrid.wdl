version 1.0

task Rbcalcgrid {
  input {
    Boolean? outputsuffix_suffix_grid
    Boolean? receptor_param_file
    Boolean? sfprmfile_scoring_param
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
      ~{true="-o" false="" outputsuffix_suffix_grid} \
      ~{true="-r" false="" receptor_param_file} \
      ~{true="-p" false="" sfprmfile_scoring_param} \
      ~{true="-g" false="" gridstep_grid_step} \
      ~{true="-b" false="" border_grid_border}
  >>>
  parameter_meta {
    outputsuffix_suffix_grid: "<OutputSuffix> - suffix for grid (.grd IS required)"
    receptor_param_file: "<ReceptorPrmFile> - receptor param file (contains active site params)"
    sfprmfile_scoring_param: "<SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)"
    gridstep_grid_step: "<GridStep> - grid step (default=0.5A)"
    border_grid_border: "<Border> - grid border around docking site (default=1.0A)"
    output_root: ""
    receptor_prm_file: ""
    sfp_rm_file: ""
    grid_step: ""
  }
}