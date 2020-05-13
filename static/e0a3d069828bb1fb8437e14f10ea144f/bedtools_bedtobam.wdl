version 1.0

task BedtoolsBedtobam {
  input {
    Boolean mapqMapq
    Boolean bed12Bed12
    Boolean ubUbAm
  }
  command <<<
    bedtools bedtobam \
      ~{true="-mapq" false="" mapqMapq} \
      ~{true="-bed12" false="" bed12Bed12} \
      ~{true="-ubam" false="" ubUbAm}
  >>>
}