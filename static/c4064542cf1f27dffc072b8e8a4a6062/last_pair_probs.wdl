version 1.0

task LastPairProbs {
  input {
    Boolean rnaRna
    Boolean estEstDist
    String misMisMap
    String fraFraGlen
    String sdevSdev
    String disjointDisjoint
    String circularCircular
  }
  command <<<
    last-pair-probs \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--estdist" false="" estEstDist} \
      ~{if defined(misMisMap) then ("--mismap " +  '"' + misMisMap + '"') else ""} \
      ~{if defined(fraFraGlen) then ("--fraglen " +  '"' + fraFraGlen + '"') else ""} \
      ~{if defined(sdevSdev) then ("--sdev " +  '"' + sdevSdev + '"') else ""} \
      ~{if defined(disjointDisjoint) then ("--disjoint " +  '"' + disjointDisjoint + '"') else ""} \
      ~{if defined(circularCircular) then ("--circular " +  '"' + circularCircular + '"') else ""}
  >>>
}