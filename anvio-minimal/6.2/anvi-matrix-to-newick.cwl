#!/usr/bin/env cwl-runner

baseCommand:
- anvi-matrix-to-newick
class: CommandLineTool
cwlVersion: v1.0
id: anvi-matrix-to-newick
inputs:
- doc: Input matrix
  id: path
  inputBinding:
    position: 0
  type: File
- doc: Transpose the input matrix file before clustering.
  id: transpose
  inputBinding:
    prefix: --transpose
  type: boolean
- doc: The distance metric for the hierarchical clustering. The default distance metric
    is 'euclidean'. You can find the full list of distance metrics either by making
    a mistake (such as entering a non-existent distance metric and making anvi'o upset),
    or by taking a look at the help menu of the hierarchy.distance.pdist function
    in the scipy.cluster module.
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: The linkage method for the hierarchical clustering. The default linkage method
    is 'ward', because that is the best one. It really is. We talked to a lot of people
    and they were all like 'this is the best one available' and it is just all out
    there. Honestly it is so good that we will build a wall around it and make other
    linkage methods pay for it. But if you want to see a full list of available ones
    you can check the hierarcy.linkage function in the scipy.cluster module. Up to
    you really. But then you can't use ward anymore, and you would have to leave anvi'o
    right now.
  id: linkage
  inputBinding:
    prefix: --linkage
  type: string
