version 1.0

task AssignTSStoGene.pl {
  input {
    String genomeGenome
    String gtfGtf
    Boolean gidGid
    Boolean bedBed
    String refRefTss
  }
  command <<<
    assignTSStoGene.pl \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{true="-gid" false="" gidGid} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(refRefTss) then ("-refTSS " +  '"' + refRefTss + '"') else ""}
  >>>
}