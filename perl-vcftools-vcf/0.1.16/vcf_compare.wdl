version 1.0

task VcfCompare {
  input {
    Boolean? apply_filters
    String? chromosomes
    Boolean? debug
    Boolean? cmp_genotypes
    Boolean? ignore_indels
    String? name_mapping
    String? info
    String? plot
    File? refseq
    String? regions
    String? samples
    String? title
    Int? win
    String vcf_compare
  }
  command <<<
    vcf-compare \
      ~{vcf_compare} \
      ~{true="--apply-filters" false="" apply_filters} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--cmp-genotypes" false="" cmp_genotypes} \
      ~{true="--ignore-indels" false="" ignore_indels} \
      ~{if defined(name_mapping) then ("--name-mapping " +  '"' + name_mapping + '"') else ""} \
      ~{if defined(info) then ("--INFO " +  '"' + info + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(win) then ("--win " +  '"' + win + '"') else ""}
  >>>
  parameter_meta {
    apply_filters: "Ignore lines where FILTER column is anything else than PASS or '.'"
    chromosomes: "Same as -r, left for backward compatibility. Please do not use as it will be dropped in the future."
    debug: "Debugging information. Giving the option multiple times increases verbosity"
    cmp_genotypes: "Compare genotypes, not only positions"
    ignore_indels: "Exclude sites containing indels from genotype comparison"
    name_mapping: "Use with -g when comparing files with differing column names. The argument to this options is a comma-separated list or one mapping per line in a file. The names are colon separated and must appear in the same order as the files on the command line."
    info: "[<int>]         Calculate genotype errors by INFO. Use zero based indecies if field has more than one value. Can be given multiple times."
    plot: "Create plots. Multiple files (e.g. per-chromosome outputs from vcf-compare) can be given."
    refseq: "Compare the actual sequence, not just positions. Use with -w to compare indels."
    regions: "Process the given regions (comma-separated list or one region per line in a file)."
    samples: "Process only the listed samples. Excluding unwanted samples may increase performance considerably."
    title: "Title for graphs (see also -p)"
    win: "In repetitive sequences, the same indel can be called at different positions. Consider records this far apart as matching (be it a SNP or an indel)."
    vcf_compare: ""
  }
}