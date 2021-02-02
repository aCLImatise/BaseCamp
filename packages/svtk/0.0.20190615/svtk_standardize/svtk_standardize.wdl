version 1.0

task SvtkStandardize {
  input {
    String? prefix
    Boolean? include_reference_sites
    File? standardize_r
    Int? contigs
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
      ~{if (include_reference_sites) then "--include-reference-sites" else ""} \
      ~{if defined(standardize_r) then ("--standardizer " +  '"' + standardize_r + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if (call_null_sites) then "--call-null-sites" else ""}
  >>>
  parameter_meta {
    prefix: "If provided, variant names will be overwritten with\\nthis prefix."
    include_reference_sites: "Include records where all samples are called 0/0 or\\n./."
    standardize_r: "Path to python file with custom standardizer\\ndefinition. (Not yet supported.)"
    contigs: "Reference fasta index (.fai). If provided, contigs in\\nindex will be used in VCF header. Otherwise all GRCh37\\ncontigs will be used in header. Variants on contigs\\nnot in provided list will be removed."
    min_size: "Minimum SV size to report [50]."
    call_null_sites: "Call sites with null genotypes (./.). Generally useful\\nwhen an algorithm has been run on a single sample and\\nhas only reported variant sites.\\n"
    vcf: "Raw VCF."
    f_out: "Standardized VCF."
    source: "Source algorithm. [delly,lumpy,manta,wham,melt]"
  }
  output {
    File out_stdout = stdout()
  }
}