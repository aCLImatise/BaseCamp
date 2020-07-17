version 1.0

task Rbcavity {
  input {
    String? receptor_param
    Boolean? write_docking_cavities
    Boolean? read_docking_cavities
    Boolean? write_insight_ii_grids
    Boolean? write_psf_crd
    String? list_atoms_dist
    Boolean? print_site
    String? border
    Boolean? write_moe_grid
    String? option_dot_dot_dot
  }
  command <<<
    rbcavity \
      ~{option_dot_dot_dot} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{true="--write-docking-cavities" false="" write_docking_cavities} \
      ~{true="--read-docking-cavities" false="" read_docking_cavities} \
      ~{true="--write-insightii-grids" false="" write_insight_ii_grids} \
      ~{true="--write-psf-crd" false="" write_psf_crd} \
      ~{if defined(list_atoms_dist) then ("--list-atoms-dist " +  '"' + list_atoms_dist + '"') else ""} \
      ~{true="--print-site" false="" print_site} \
      ~{if defined(border) then ("--border " +  '"' + border + '"') else ""} \
      ~{true="--write-moe-grid" false="" write_moe_grid}
  >>>
  parameter_meta {
    receptor_param: "receptor param file (contains active site params)"
    write_docking_cavities: "write docking cavities (plus distance grid) to .as file"
    read_docking_cavities: "read docking cavities (plus distance grid) from .as file"
    write_insight_ii_grids: "dump InsightII grids for each cavity for visualisation"
    write_psf_crd: "dump target PSF/CRD files for rDock Viewer"
    list_atoms_dist: "list receptor atoms within specified distance of any cavity (in angstrom) (default: 5.0)"
    print_site: "print SITE descriptors (counts of exposed atoms)"
    border: "set the border around the cavities for the distance grid (in angstrom) (default: 8.0)"
    write_moe_grid: "write active site into a MOE grid"
    option_dot_dot_dot: ""
  }
}