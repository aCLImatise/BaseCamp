version 1.0

task Haploclique {
  input {
    Boolean gffGff
    Boolean bamBam
    String maxMaxCliques
    String limitLimitCliqueSize
    String? cleverClever
    String? bronkBronkErBosch
  }
  command <<<
    haploclique \
      ~{cleverClever} \
      ~{true="--gff" false="" gffGff} \
      ~{true="--bam" false="" bamBam} \
      ~{if defined(maxMaxCliques) then ("--max_cliques " +  '"' + maxMaxCliques + '"') else ""} \
      ~{if defined(limitLimitCliqueSize) then ("--limit_clique_size " +  '"' + limitLimitCliqueSize + '"') else ""} \
      ~{bronkBronkErBosch}
  >>>
}