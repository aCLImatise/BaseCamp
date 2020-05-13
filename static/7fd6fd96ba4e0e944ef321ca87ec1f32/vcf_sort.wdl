version 1.0

task VcfSort {
  input {
    Boolean chromosomalChromosomalOrder
    Int parallelParallel
    Boolean temporaryTemporaryDirectory
  }
  command <<<
    vcf-sort \
      ~{true="--chromosomal-order" false="" chromosomalChromosomalOrder} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{true="--temporary-directory" false="" temporaryTemporaryDirectory}
  >>>
}