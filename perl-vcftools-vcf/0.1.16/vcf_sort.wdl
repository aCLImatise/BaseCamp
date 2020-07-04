version 1.0

task VcfSort {
  input {
    Boolean? chromosomal_order
    Int? parallel
    Boolean? temporary_directory
  }
  command <<<
    vcf-sort \
      ~{true="--chromosomal-order" false="" chromosomal_order} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{true="--temporary-directory" false="" temporary_directory}
  >>>
  parameter_meta {
    chromosomal_order: "Use natural ordering (1,2,10,MT,X) rather then the default (1,10,2,MT,X). This requires new version of the unix \"sort\" command which supports the --version-sort option."
    parallel: "Change the number of sorts run concurrently to <int>"
    temporary_directory: "Use a directory other than /tmp as the temporary directory for sorting."
  }
}