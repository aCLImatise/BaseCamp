version 1.0

task NOMeFiltering {
  input {
    File genomeGenomeFolder
  }
  command <<<
    NOMe_filtering \
      ~{if defined(genomeGenomeFolder) then ("--genome_folder " +  '"' + genomeGenomeFolder + '"') else ""}
  >>>
}