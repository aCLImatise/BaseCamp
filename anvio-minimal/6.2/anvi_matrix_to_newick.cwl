class: CommandLineTool
id: anvi_matrix_to_newick.cwl
inputs:
- id: path
  doc: Input matrix
  type: File
  inputBinding:
    position: 0
- id: transpose
  doc: Transpose the input matrix file before clustering.
  type: boolean
  inputBinding:
    prefix: --transpose
- id: distance
  doc: The distance metric for the hierarchical clustering. The default distance metric
    is 'euclidean'. You can find the full list of distance metrics either by making
    a mistake (such as entering a non-existent distance metric and making anvi'o upset),
    or by taking a look at the help menu of the hierarchy.distance.pdist function
    in the scipy.cluster module.
  type: string
  inputBinding:
    prefix: --distance
- id: linkage
  doc: The linkage method for the hierarchical clustering. The default linkage method
    is 'ward', because that is the best one. It really is. We talked to a lot of people
    and they were all like 'this is the best one available' and it is just all out
    there. Honestly it is so good that we will build a wall around it and make other
    linkage methods pay for it. But if you want to see a full list of available ones
    you can check the hierarcy.linkage function in the scipy.cluster module. Up to
    you really. But then you can't use ward anymore, and you would have to leave anvi'o
    right now.
  type: string
  inputBinding:
    prefix: --linkage
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-matrix-to-newick
