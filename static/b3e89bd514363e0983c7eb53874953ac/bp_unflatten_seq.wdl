version 1.0

task BpUnflattenSeq.pl {
  input {
    Boolean iI
    String fromFrom
    String toTo
    Boolean gffGff
    Boolean oO
    Boolean detailDetail
    Boolean eE
    Boolean noNoMagic
    Boolean noNoTypemap
    String? databankDatabankEntry
    String? geneGene
    String? geneGene
  }
  command <<<
    bp_unflatten_seq.pl \
      ~{databankDatabankEntry} \
      ~{geneGene} \
      ~{true="-i" false="" iI} \
      ~{if defined(fromFrom) then ("-from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("-to " +  '"' + toTo + '"') else ""} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-o" false="" oO} \
      ~{true="-detail" false="" detailDetail} \
      ~{true="-e" false="" eE} \
      ~{true="-nomagic" false="" noNoMagic} \
      ~{true="-notypemap" false="" noNoTypemap} \
      ~{geneGene}
  >>>
}