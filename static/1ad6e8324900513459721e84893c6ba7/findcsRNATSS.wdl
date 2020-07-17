version 1.0

task FindcsRNATSS.plTag directory {
  input {
    Boolean? stable_threshold
    Boolean? bi_threshold
    Boolean? dist
  }
  command <<<
    findcsRNATSS.pl tag directory \
      ~{true="-stableThreshold" false="" stable_threshold} \
      ~{true="-biThreshold" false="" bi_threshold} \
      ~{true="-dist" false="" dist}
  >>>
  parameter_meta {
    stable_threshold: "<#> (minimum RNAseq read density for stable transcript, def: 2)"
    bi_threshold: "<#> (minimum divergent csRNAseq signal for bi/divergent TSS, def: 2)"
    dist: "<#> (minimum distance from annotated TSS to assign 'distal' annotation, def: 500)"
  }
}