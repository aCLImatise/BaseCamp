version 1.0

task GetMappingStats.pl {
  input {
    Boolean minMin
    String genomeGenome
  }
  command <<<
    getMappingStats.pl \
      ~{true="-min" false="" minMin} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""}
  >>>
}