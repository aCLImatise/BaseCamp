version 1.0

task VtoolsInit {
  input {
    Boolean forceForce
    String buildBuild
    String storeStore
    Boolean vV
    String parentParent
    Boolean variantsVariants
    Boolean samplesSamples
    Boolean genotypesGenotypes
    Array[String]+ childrenChildren
    String? projectProject
  }
  command <<<
    vtools init \
      ~{projectProject} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{if defined(storeStore) then ("--store " +  '"' + storeStore + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(parentParent) then ("--parent " +  '"' + parentParent + '"') else ""} \
      ~{true="--variants" false="" variantsVariants} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--genotypes" false="" genotypesGenotypes} \
      ~{if defined(childrenChildren) then ("--children " +  '"' + childrenChildren + '"') else ""}
  >>>
}