class: CommandLineTool
id: fpocket.cwl
inputs:
- id: in_calculate_interaction_grids
  doc: ": Specify this flag if you want fpocket to\ncalculate VdW and Coulomb grids\
    \ for each pocket"
  type: boolean
  inputBinding:
    prefix: --calculate_interaction_grids
- id: in_pocket_descr_stdout
  doc: ": Put this flag if you want to write fpocket\ndescriptors to the standard\
    \ output"
  type: boolean
  inputBinding:
    prefix: --pocket_descr_stdout
- id: in_model_number
  doc: '(int)         : Number of Model to analyze.'
  type: boolean
  inputBinding:
    prefix: --model_number
- id: in_topology_file
  doc: '(string)             : File name of a topology file (Amber prmtop).'
  type: boolean
  inputBinding:
    prefix: --topology_file
- id: in_min_alpha_size
  doc: '(float)             : Minimum radius of an alpha-sphere.    (6.2)'
  type: boolean
  inputBinding:
    prefix: --min_alpha_size
- id: in_max_alpha_size
  doc: '(float)             : Maximum radius of an alpha-sphere.    (3.4)'
  type: boolean
  inputBinding:
    prefix: --max_alpha_size
- id: in_clustering_distance
  doc: '(float)        : Distance threshold for clustering algorithm   (2.4)'
  type: boolean
  inputBinding:
    prefix: --clustering_distance
- id: in_clustering_method
  doc: "(char)           : Specify the clustering method wanted for\ngrouping voronoi\
    \ vertices together (s)\ns : single linkage clustering\nm : complete linkage clustering\n\
    a : average linkage clustering\nc : centroid linkage clustering"
  type: boolean
  inputBinding:
    prefix: --clustering_method
- id: in_clustering_measure
  doc: "(char)          : Specify the distance measure for clustering   (e)\ne : euclidean\
    \ distance\nb : Manhattan distance"
  type: boolean
  inputBinding:
    prefix: --clustering_measure
- id: in_min_spheres_per_pocket
  doc: '(int)       : Minimum number of a-sphere per pocket.        (15)'
  type: boolean
  inputBinding:
    prefix: --min_spheres_per_pocket
- id: in_ratio_apol_spheres_pocket
  doc: "(float)  : Minimum proportion of apolar sphere in\na pocket (remove otherwise)\
    \ (0.0)"
  type: boolean
  inputBinding:
    prefix: --ratio_apol_spheres_pocket
- id: in_number_apol_asph_pocket
  doc: "(int)      : Minimum number of apolar neighbor for\nan a-sphere to be considered\
    \ as apolar.   (3)"
  type: boolean
  inputBinding:
    prefix: --number_apol_asph_pocket
- id: in_iterations_volume_mc
  doc: "(integer)     : Number of Monte-Carlo iteration for the\ncalculation of each\
    \ pocket volume.(300)"
  type: boolean
  inputBinding:
    prefix: --iterations_volume_mc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fpocket
