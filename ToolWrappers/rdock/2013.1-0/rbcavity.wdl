version 1.0

task Rbcavity {
  input {
    Boolean? prmfile_receptor_param
    Boolean? was
    Boolean? ras
    Boolean? dump_insightii_grids
    Boolean? dump_target_psfcrd
    Boolean? dist_list_receptor
    Boolean? print_site_descriptors
    Boolean? border_set_border
    Boolean? write_active_site
  }
  command <<<
    rbcavity \
      ~{if (prmfile_receptor_param) then "-r" else ""} \
      ~{if (was) then "-was" else ""} \
      ~{if (ras) then "-ras" else ""} \
      ~{if (dump_insightii_grids) then "-d" else ""} \
      ~{if (dump_target_psfcrd) then "-v" else ""} \
      ~{if (dist_list_receptor) then "-l" else ""} \
      ~{if (print_site_descriptors) then "-s" else ""} \
      ~{if (border_set_border) then "-b" else ""} \
      ~{if (write_active_site) then "-m" else ""}
  >>>
  parameter_meta {
    prmfile_receptor_param: "<PrmFile> - receptor param file (contains active site params)"
    was: "[-W]   - write docking cavities (plus distance grid) to .as file"
    ras: "[-R]   - read docking cavities (plus distance grid) from .as file"
    dump_insightii_grids: "- dump InsightII grids for each cavity for visualisation"
    dump_target_psfcrd: "- dump target PSF/CRD files for rDock Viewer"
    dist_list_receptor: "<dist>    - list receptor atoms with <dist> A of any cavity"
    print_site_descriptors: "- print SITE descriptors (counts of exposed atoms)"
    border_set_border: "<border>  - set the border around the cavities for the distance grid (default=8A)"
    write_active_site: "- write active site into a MOE grid"
  }
  output {
    File out_stdout = stdout()
  }
}