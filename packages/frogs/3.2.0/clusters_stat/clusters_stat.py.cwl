class: CommandLineTool
id: clusters_stat.py.cwl
inputs:
- id: in_distance_method
  doc: "Used distance method for classify (see http://docs.sci\npy.org/doc/scipy-0.14.0/reference/generated/generated/\n\
    scipy.spatial.distance.pdist.html#scipy.spatial.distan\nce.pdist). [Default: braycurtis]"
  type: string?
  inputBinding:
    prefix: --distance-method
- id: in_linkage_method
  doc: "Used linkage method for classify (see http://docs.scip\ny.org/doc/scipy-0.14.0/reference/generated/scipy.clust\n\
    er.hierarchy.linkage.html). [Default: average]"
  type: string?
  inputBinding:
    prefix: --linkage-method
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_biom
  doc: The BIOM file to process.
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_output_file
  doc: "The HTML file containing the graphs. [Default:\nclusters_stat.html]"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "The HTML file containing the graphs. [Default:\nclusters_stat.html]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.0--py37_0
cwlVersion: v1.1
baseCommand:
- clusters_stat.py
