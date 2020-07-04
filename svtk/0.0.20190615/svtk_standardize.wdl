version 1.0

task SvtkStandardize {
  input {
    String? prefix
    Boolean? include_reference_sites
    String? standardize_r
    String? contigs
    Int? min_size
    Boolean? call_null_sites
    String vcf
    String f_out
    String source
  }
  command <<<
    svtk standardize \
      ~{vcf} \
      ~{f_out} \
      ~{source} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--include-reference-sites" false="" include_reference_sites} \
      ~{if defined(standardize_r) then ("--standardizer " +  '"' + standardize_r + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{true="--call-null-sites" false="" call_null_sites}
  >>>
  parameter_meta {
    prefix: "If provided, variant names will be overwritten with this prefix."
    include_reference_sites: "Include records where all samples are called 0/0 or ./."
    standardize_r: "Path to python file with custom standardizer definition. (Not yet supported.)"
    contigs: "Reference fasta index (.fai). If provided, contigs in index will be used in VCF header. Otherwise all GRCh37 contigs will be used in header. Variants on contigs not in provided list will be removed."
    min_size: "Minimum SV size to report [50]."
    call_null_sites: "Call sites with null genotypes (./.). Generally useful when an algorithm has been run on a single sample and has only reported variant sites."
    vcf: "Raw VCF."
    f_out: "Standardized VCF."
    source: "Source algorithm. [delly,lumpy,manta,wham,melt]"
  }
}