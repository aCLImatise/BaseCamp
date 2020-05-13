version 1.0

task BedpeToBam {
  input {
    Boolean mapqMapq
    Boolean ubUbAm
  }
  command <<<
    bedpeToBam \
      ~{true="-mapq" false="" mapqMapq} \
      ~{true="-ubam" false="" ubUbAm}
  >>>
}