version 1.0

task ExpansionHunter {
  input {
    Boolean? print_version_number
    String? reads
    String? reference
    String? variant_catalog
    String? output_prefix
    String? region_extension_length
    String? sex
    String? log_level
    Boolean? arg_dagaligner_specify
    Boolean? arg_seeking_specify
  }
  command <<<
    ExpansionHunter \
      ~{true="-v" false="" print_version_number} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(variant_catalog) then ("--variant-catalog " +  '"' + variant_catalog + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(region_extension_length) then ("--region-extension-length " +  '"' + region_extension_length + '"') else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="-a" false="" arg_dagaligner_specify} \
      ~{true="-m" false="" arg_seeking_specify}
  >>>
  parameter_meta {
    print_version_number: "[ --version ]                      Print version number"
    reads: "BAM/CRAM file with aligned reads"
    reference: "FASTA file with reference genome"
    variant_catalog: "JSON file with variants to genotype"
    output_prefix: "Prefix for the output files"
    region_extension_length: "(=1000) How far from on/off-target regions to  search for informative reads"
    sex: "(=female)                   Sex of the sample; must be either male  or female"
    log_level: "(=info)               trace, debug, info, warn, or error"
    arg_dagaligner_specify: "[ --aligner ] arg (=dag-aligner)   Specify which aligner to use  (dag-aligner or path-aligner)"
    arg_seeking_specify: "[ --analysis-mode ] arg (=seeking) Specify which analysis workflow to use  (seeking or streaming)"
  }
}