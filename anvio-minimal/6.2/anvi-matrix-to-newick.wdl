version 1.0

task AnviMatrixToNewick {
  input {
    Boolean transposeTranspose
    String distanceDistance
    String linkageLinkage
    File? pathPath
  }
  command <<<
    anvi-matrix-to-newick \
      ~{pathPath} \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""}
  >>>
}