version 1.0

task VcfToDeletionlist {
  input {
    Int? maximal_length_considered
    Boolean? include_deletions_marked
    Boolean? print_list_genotypes
  }
  command <<<
    vcf-to-deletionlist \
      ~{if defined(maximal_length_considered) then ("-m " +  '"' + maximal_length_considered + '"') else ""} \
      ~{true="-i" false="" include_deletions_marked} \
      ~{true="-g" false="" print_list_genotypes}
  >>>
  parameter_meta {
    maximal_length_considered: "Maximal length to be considered."
    include_deletions_marked: "Include deletions marked as IMPRECISE."
    print_list_genotypes: "Print list of genotypes as comma-separated list in last column."
  }
}