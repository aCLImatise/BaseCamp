class: CommandLineTool
id: anvi_matrix_to_newick.cwl
inputs:
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_items_order_file
  doc: "PATH\nIn addition to a newick formatted output file, you can\nask anvi'o to\
    \ report the order of items in the\nresulting tree in a separate file. The content\
    \ of this\nfile will be a single-column item names the way they\nare ordered in\
    \ the output newick dendrogram. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --items-order-file
- id: in_transpose
  doc: "Transpose the input matrix file before clustering.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --transpose
- id: in_distance
  doc: "The distance metric for the hierarchical clustering.\nThe default distance\
    \ metric is 'euclidean'. You can\nfind the full list of distance metrics either\
    \ by\nmaking a mistake (such as entering a non-existent\ndistance metric and making\
    \ anvi'o upset), or by taking\na look at the help menu of the\nhierarchy.distance.pdist\
    \ function in the scipy.cluster\nmodule."
  type: string?
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The linkage method for the hierarchical clustering.\nThe default linkage method\
    \ is 'ward', because that is\nthe best one. It really is. We talked to a lot of\n\
    people and they were all like 'this is the best one\navailable' and it is just\
    \ all out there. Honestly it\nis so good that we will build a wall around it and\n\
    make other linkage methods pay for it. But if you want\nto see a full list of\
    \ available ones you can check the\nhierarcy.linkage function in the scipy.cluster\
    \ module.\nUp to you really. But then you can't use ward anymore,\nand you would\
    \ have to leave anvi'o right now."
  type: string?
  inputBinding:
    prefix: --linkage
- id: in_view_data
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_dendrogram
  doc: '🍺 More on `anvi-matrix-to-newick`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_items_order_file
  doc: "PATH\nIn addition to a newick formatted output file, you can\nask anvi'o to\
    \ report the order of items in the\nresulting tree in a separate file. The content\
    \ of this\nfile will be a single-column item names the way they\nare ordered in\
    \ the output newick dendrogram. (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_items_order_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-matrix-to-newick
