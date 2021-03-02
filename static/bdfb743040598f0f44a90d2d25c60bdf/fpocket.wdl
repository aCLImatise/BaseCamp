version 1.0

task Fpocket {
  input {
    Boolean? calculate_interaction_grids
    Boolean? pocket_descr_stdout
    Boolean? model_number
    Boolean? topology_file
    Boolean? custom_ligand
    Boolean? min_alpha_size
    Boolean? max_alpha_size
    Boolean? clustering_distance
    Boolean? clustering_method
    Boolean? clustering_measure
    Boolean? min_spheres_per_pocket
    Boolean? ratio_apol_spheres_pocket
    Boolean? number_apol_asph_pocket
    Boolean? iterations_volume_mc
  }
  command <<<
    fpocket \
      ~{if (calculate_interaction_grids) then "--calculate_interaction_grids" else ""} \
      ~{if (pocket_descr_stdout) then "--pocket_descr_stdout" else ""} \
      ~{if (model_number) then "--model_number" else ""} \
      ~{if (topology_file) then "--topology_file" else ""} \
      ~{if (custom_ligand) then "--custom_ligand" else ""} \
      ~{if (min_alpha_size) then "--min_alpha_size" else ""} \
      ~{if (max_alpha_size) then "--max_alpha_size" else ""} \
      ~{if (clustering_distance) then "--clustering_distance" else ""} \
      ~{if (clustering_method) then "--clustering_method" else ""} \
      ~{if (clustering_measure) then "--clustering_measure" else ""} \
      ~{if (min_spheres_per_pocket) then "--min_spheres_per_pocket" else ""} \
      ~{if (ratio_apol_spheres_pocket) then "--ratio_apol_spheres_pocket" else ""} \
      ~{if (number_apol_asph_pocket) then "--number_apol_asph_pocket" else ""} \
      ~{if (iterations_volume_mc) then "--iterations_volume_mc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fpocket:3.1.4.2"
  }
  parameter_meta {
    calculate_interaction_grids: ": Specify this flag if you want fpocket to\\ncalculate VdW and Coulomb grids for each pocket"
    pocket_descr_stdout: ": Put this flag if you want to write fpocket\\ndescriptors to the standard output"
    model_number: "(int)                 : Number of Model to analyze."
    topology_file: "(string)             : File name of a topology file (Amber prmtop)."
    custom_ligand: "(string)             : String specifying a ligand like: residuenumber:residuename:chain_code (ie. 1224:PU8:A)."
    min_alpha_size: "(float)             : Minimum radius of an alpha-sphere.    (6.2)"
    max_alpha_size: "(float)             : Maximum radius of an alpha-sphere.    (3.4)"
    clustering_distance: "(float)        : Distance threshold for clustering algorithm   (2.4)"
    clustering_method: "(char)           : Specify the clustering method wanted for\\ngrouping voronoi vertices together (s)\\ns : single linkage clustering\\nm : complete linkage clustering\\na : average linkage clustering\\nc : centroid linkage clustering"
    clustering_measure: "(char)          : Specify the distance measure for clustering   (e)\\ne : euclidean distance\\nb : Manhattan distance"
    min_spheres_per_pocket: "(int)       : Minimum number of a-sphere per pocket.        (15)"
    ratio_apol_spheres_pocket: "(float)  : Minimum proportion of apolar sphere in\\na pocket (remove otherwise) (0.0)"
    number_apol_asph_pocket: "(int)      : Minimum number of apolar neighbor for\\nan a-sphere to be considered as apolar.   (3)"
    iterations_volume_mc: "(integer)     : Number of Monte-Carlo iteration for the\\ncalculation of each pocket volume.(300)"
  }
  output {
    File out_stdout = stdout()
  }
}