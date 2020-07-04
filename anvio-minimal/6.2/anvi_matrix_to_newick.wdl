version 1.0

task AnviMatrixToNewick {
  input {
    Boolean? transpose
    String? distance
    String? linkage
    File? o
    File path
  }
  command <<<
    anvi-matrix-to-newick \
      ~{path} \
      ~{true="--transpose" false="" transpose} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    transpose: "Transpose the input matrix file before clustering."
    distance: "The distance metric for the hierarchical clustering. The default distance metric is 'euclidean'. You can find the full list of distance metrics either by making a mistake (such as entering a non-existent distance metric and making anvi'o upset), or by taking a look at the help menu of the hierarchy.distance.pdist function in the scipy.cluster module."
    linkage: "The linkage method for the hierarchical clustering. The default linkage method is 'ward', because that is the best one. It really is. We talked to a lot of people and they were all like 'this is the best one available' and it is just all out there. Honestly it is so good that we will build a wall around it and make other linkage methods pay for it. But if you want to see a full list of available ones you can check the hierarcy.linkage function in the scipy.cluster module. Up to you really. But then you can't use ward anymore, and you would have to leave anvi'o right now."
    o: ""
    path: "Input matrix"
  }
}