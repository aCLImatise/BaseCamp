version 1.0

task Rbcavity {
  input {
    Boolean? prmfile_receptor_param
    Boolean? was
    Boolean? ras
    Boolean? dump_insightii_grids
    Boolean? dump_target_files
    Boolean? dist_list_receptor
    Boolean? print_site_descriptors
    Boolean? border_set_border
    Boolean? write_active_site
  }
  command <<<
    rbcavity \
      ~{true="-r" false="" prmfile_receptor_param} \
      ~{true="-was" false="" was} \
      ~{true="-ras" false="" ras} \
      ~{true="-d" false="" dump_insightii_grids} \
      ~{true="-v" false="" dump_target_files} \
      ~{true="-l" false="" dist_list_receptor} \
      ~{true="-s" false="" print_site_descriptors} \
      ~{true="-b" false="" border_set_border} \
      ~{true="-m" false="" write_active_site}
  >>>
  parameter_meta {
    prmfile_receptor_param: "<PrmFile> - receptor param file (contains active site params)"
    was: "[-W]   - write docking cavities (plus distance grid) to .as file"
    ras: "[-R]   - read docking cavities (plus distance grid) from .as file"
    dump_insightii_grids: "- dump InsightII grids for each cavity for visualisation"
    dump_target_files: "- dump target PSF/CRD files for rDock Viewer"
    dist_list_receptor: "<dist>    - list receptor atoms with <dist> A of any cavity"
    print_site_descriptors: "- print SITE descriptors (counts of exposed atoms)"
    border_set_border: "<border>  - set the border around the cavities for the distance grid (default=8A)"
    write_active_site: "- write active site into a MOE grid"
  }
}