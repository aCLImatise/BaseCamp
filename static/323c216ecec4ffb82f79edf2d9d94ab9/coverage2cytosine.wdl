version 1.0

task Coverage2cytosine {
  input {
    File genomeGenomeFolder
    String oO
    String? inputInput
  }
  command <<<
    coverage2cytosine \
      ~{inputInput} \
      ~{if defined(genomeGenomeFolder) then ("--genome_folder " +  '"' + genomeGenomeFolder + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}