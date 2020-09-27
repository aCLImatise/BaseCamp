version 1.0

task RefinemTaxonFilter {
  input {
    Float? consensus_tax_on
    Float? trusted_scaffold
    Float? common_tax_a
    Float? congruent_scaffold
    Int? min_classified_per
    Int? min_classified
    Float? consensus_scaffold
    Int? cpus
    Boolean? silent
    String tax_on_profile_dir
    String output_file
  }
  command <<<
    refinem taxon_filter \
      ~{tax_on_profile_dir} \
      ~{output_file} \
      ~{if defined(consensus_tax_on) then ("--consensus_taxon " +  '"' + consensus_tax_on + '"') else ""} \
      ~{if defined(trusted_scaffold) then ("--trusted_scaffold " +  '"' + trusted_scaffold + '"') else ""} \
      ~{if defined(common_tax_a) then ("--common_taxa " +  '"' + common_tax_a + '"') else ""} \
      ~{if defined(congruent_scaffold) then ("--congruent_scaffold " +  '"' + congruent_scaffold + '"') else ""} \
      ~{if defined(min_classified_per) then ("--min_classified_per " +  '"' + min_classified_per + '"') else ""} \
      ~{if defined(min_classified) then ("--min_classified " +  '"' + min_classified + '"') else ""} \
      ~{if defined(consensus_scaffold) then ("--consensus_scaffold " +  '"' + consensus_scaffold + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    consensus_tax_on: "threshold for accepting a consensus taxon (default:\\n50.0)"
    trusted_scaffold: "threshold for treating a scaffold as trusted (default:\\n50.0)"
    common_tax_a: "threshold for treating a taxon as common (default:\\n5.0)"
    congruent_scaffold: "threshold for treating a scaffold as congruent\\n(default: 10.0)"
    min_classified_per: "minimum percentage of genes with a classification to\\nfilter a scaffold (default: 25.0)"
    min_classified: "minimum number of classified genes required to filter\\na scaffold (default: 5)"
    consensus_scaffold: "threshold of consensus taxon for filtering a scaffold\\n(default: 50.0)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger"
    tax_on_profile_dir: "directory with results of taxon_profile command"
    output_file: "file indicating divergent scaffolds"
  }
  output {
    File out_stdout = stdout()
  }
}