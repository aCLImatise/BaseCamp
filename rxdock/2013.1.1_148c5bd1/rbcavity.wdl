version 1.0

task Rbcavity {
  input {
    File? receptor_param
    Boolean? write_docking_cavities
    Boolean? read_docking_cavities
    Boolean? write_insight_ii_grids
    Float? list_atoms_dist
    Boolean? print_site
    Float? border
    Boolean? write_moe_grid
    Boolean? v
    String visualisation
  }
  command <<<
    rbcavity \
      ~{visualisation} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{if (write_docking_cavities) then "--write-docking-cavities" else ""} \
      ~{if (read_docking_cavities) then "--read-docking-cavities" else ""} \
      ~{if (write_insight_ii_grids) then "--write-insightii-grids" else ""} \
      ~{if defined(list_atoms_dist) then ("--list-atoms-dist " +  '"' + list_atoms_dist + '"') else ""} \
      ~{if (print_site) then "--print-site" else ""} \
      ~{if defined(border) then ("--border " +  '"' + border + '"') else ""} \
      ~{if (write_moe_grid) then "--write-moe-grid" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    receptor_param: "receptor param file (contains active site\\nparams)"
    write_docking_cavities: "write docking cavities (plus distance grid)\\nto .as file"
    read_docking_cavities: "read docking cavities (plus distance grid)\\nfrom .as file"
    write_insight_ii_grids: "dump InsightII grids for each cavity for"
    list_atoms_dist: "list receptor atoms within specified distance\\nof any cavity (in angstrom) (default: 5.0)"
    print_site: "print SITE descriptors (counts of exposed\\natoms)"
    border: "set the border around the cavities for the\\ndistance grid (in angstrom) (default: 8.0)"
    write_moe_grid: "write active site into a MOE grid"
    v: ""
    visualisation: "-v, --write-psf-crd           dump target PSF/CRD files for rDock Viewer"
  }
  output {
    File out_stdout = stdout()
  }
}