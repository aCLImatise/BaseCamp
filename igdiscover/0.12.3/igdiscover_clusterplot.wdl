version 1.0

task IgdiscoverClusterplot {
  input {
    String minimumMinimumGroupSize
    String geneGene
    String typeType
    String sizeSize
    Boolean ignoreIgnoreJ
    String dpiDpi
    Boolean noNoTitle
    String? tableTable
    Directory? directoryDirectory
  }
  command <<<
    igdiscover clusterplot \
      ~{tableTable} \
      ~{if defined(minimumMinimumGroupSize) then ("--minimum-group-size " +  '"' + minimumMinimumGroupSize + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{true="--ignore-J" false="" ignoreIgnoreJ} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--no-title" false="" noNoTitle} \
      ~{directoryDirectory}
  >>>
}