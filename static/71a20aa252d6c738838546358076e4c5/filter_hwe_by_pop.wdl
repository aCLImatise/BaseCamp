version 1.0

task FilterHweByPop.pl {
  input {
    Boolean? vcf_file
    Boolean? pop_map
    Boolean? cut_off
    Boolean? out
  }
  command <<<
    filter_hwe_by_pop.pl \
      ~{true="--vcffile" false="" vcf_file} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="--cutoff" false="" cut_off} \
      ~{true="--out" false="" out}
  >>>
  parameter_meta {
    vcf_file: "VCF input file"
    pop_map: "File with names of individuals and population designations, one per line"
    cut_off: "Proportion of all populations that a locus can be below HWE cutoff without being filtered. For example, choosing 0.5 will filter SNPs that are below the p-value threshold in 50% or more of the populations. [Default: 0.25]"
    out: "Name of outfile, by vcftools conventions (will be named X.recode.vcf)"
  }
}