version 1.0

task CompareSTR {
  input {
    String? vcf_one
    String? vcf_two
    String? out
    String? vcf_type_one
    String? vcf_type_two
    String? samples
    String? region
    String? stratify_fields
    String? stratify_bin_sizes
    String? stratify_file
    Boolean? period
    String? bubble_min
    String? bubble_max
    Boolean? verbose
    String? num_records
    Boolean? no_plot
    String tool
    String for
    String comparing
    String two
    String str
    String call_sets
  }
  command <<<
    compareSTR \
      ~{tool} \
      ~{for} \
      ~{comparing} \
      ~{two} \
      ~{str} \
      ~{call_sets} \
      ~{if defined(vcf_one) then ("--vcf1 " +  '"' + vcf_one + '"') else ""} \
      ~{if defined(vcf_two) then ("--vcf2 " +  '"' + vcf_two + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type_one) then ("--vcftype1 " +  '"' + vcf_type_one + '"') else ""} \
      ~{if defined(vcf_type_two) then ("--vcftype2 " +  '"' + vcf_type_two + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(stratify_fields) then ("--stratify-fields " +  '"' + stratify_fields + '"') else ""} \
      ~{if defined(stratify_bin_sizes) then ("--stratify-binsizes " +  '"' + stratify_bin_sizes + '"') else ""} \
      ~{if defined(stratify_file) then ("--stratify-file " +  '"' + stratify_file + '"') else ""} \
      ~{true="--period" false="" period} \
      ~{if defined(bubble_min) then ("--bubble-min " +  '"' + bubble_min + '"') else ""} \
      ~{if defined(bubble_max) then ("--bubble-max " +  '"' + bubble_max + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(num_records) then ("--numrecords " +  '"' + num_records + '"') else ""} \
      ~{true="--noplot" false="" no_plot}
  >>>
  parameter_meta {
    vcf_one: "First VCF file to compare (must be sorted, bgzipped, and indexed)"
    vcf_two: "Second VCF file to compare (must be sorted, bgzipped, and indexed)"
    out: "Prefix to name output files"
    vcf_type_one: "Type of --vcf1. Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    vcf_type_two: "Type of --vcf2. Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    samples: "File containing list of samples to include"
    region: "Restrict to this region chrom:start-end"
    stratify_fields: "Comma-separated list of FORMAT fields to stratify by"
    stratify_bin_sizes: "Comma-separated list of min:max:binsize to stratify each field on. Must be same length as --stratify- fields."
    stratify_file: "Set to 1 to stratify based on --vcf1. Set to 2 to stratify based on --vcf2. Set to 0 to apply stratification to both --vcf1 and --vcf2"
    period: "Report results overall and also stratified by repeat unit length (period)"
    bubble_min: "Minimum x/y axis value to display on bubble plots"
    bubble_max: "Maximum x/y axis value to display on bubble plots"
    verbose: "Print helpful debugging info"
    num_records: "For debugging, only process this many records"
    no_plot: "Don't output any plots. Only produce text output"
    tool: ""
    for: ""
    comparing: ""
    two: ""
    str: ""
    call_sets: ""
  }
}