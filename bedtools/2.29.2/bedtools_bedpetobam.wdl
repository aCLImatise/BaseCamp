version 1.0

task BedtoolsBedpetobam {
  input {
    Boolean mapqMapq
    Boolean ubUbAm
  }
  command <<<
    bedtools bedpetobam \
      ~{true="-mapq" false="" mapqMapq} \
      ~{true="-ubam" false="" ubUbAm}
  >>>
}