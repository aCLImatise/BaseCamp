version 1.0

task Minvar {
  input {
    String? fast_q
    Boolean? recal
    Boolean? keep
    Boolean? v
  }
  command <<<
    minvar \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="--recal" false="" recal} \
      ~{true="--keep" false="" keep} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    fast_q: "input reads in fastq format"
    recal: "turn on recalibration with GATK <default: False>"
    keep: "keep intermediate files <default: False>"
    v: ""
  }
}