version 1.0

task CompareSTR {
  input {
    Int? vcf_one
    Int? vcf_two
    String? out
    File? samples
    String? region
    String? stratify_fields
    Int? stratify_bin_sizes
    File? stratify_file
    Boolean? period
    Int? bubble_min
    Int? bubble_max
    Boolean? verbose
    Int? num_records
    Boolean? no_plot
    Int? vcf_type_one
    Int? vcf_type_two
    Boolean? ignore_phasing
    String tool
    String for
    String comparing
    String genotypes
    String from
    String two
    String tr
    String v_cfs
  }
  command <<<
    compareSTR \
      ~{tool} \
      ~{for} \
      ~{comparing} \
      ~{genotypes} \
      ~{from} \
      ~{two} \
      ~{tr} \
      ~{v_cfs} \
      ~{if defined(vcf_one) then ("--vcf1 " +  '"' + vcf_one + '"') else ""} \
      ~{if defined(vcf_two) then ("--vcf2 " +  '"' + vcf_two + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(stratify_fields) then ("--stratify-fields " +  '"' + stratify_fields + '"') else ""} \
      ~{if defined(stratify_bin_sizes) then ("--stratify-binsizes " +  '"' + stratify_bin_sizes + '"') else ""} \
      ~{if defined(stratify_file) then ("--stratify-file " +  '"' + stratify_file + '"') else ""} \
      ~{if (period) then "--period" else ""} \
      ~{if defined(bubble_min) then ("--bubble-min " +  '"' + bubble_min + '"') else ""} \
      ~{if defined(bubble_max) then ("--bubble-max " +  '"' + bubble_max + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(num_records) then ("--numrecords " +  '"' + num_records + '"') else ""} \
      ~{if (no_plot) then "--noplot" else ""} \
      ~{if defined(vcf_type_one) then ("--vcftype1 " +  '"' + vcf_type_one + '"') else ""} \
      ~{if defined(vcf_type_two) then ("--vcftype2 " +  '"' + vcf_type_two + '"') else ""} \
      ~{if (ignore_phasing) then "--ignore-phasing" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trtools:4.0.0--py_0"
  }
  parameter_meta {
    vcf_one: "First VCF file to compare (must be sorted, bgzipped,\\nand indexed)"
    vcf_two: "Second VCF file to compare (must be sorted, bgzipped,\\nand indexed)"
    out: "Prefix to name output files"
    samples: "File containing list of samples to include"
    region: "Restrict to this region chrom:start-end"
    stratify_fields: "Comma-separated list of FORMAT fields to stratify by"
    stratify_bin_sizes: "Comma-separated list of min:max:binsize to stratify\\neach field on. Must be same length as --stratify-\\nfields."
    stratify_file: "Set to 1 to stratify based on --vcf1. Set to 2 to\\nstratify based on --vcf2. Set to 0 to apply\\nstratification to both --vcf1 and --vcf2 (default: 0)"
    period: "Report results overall and also stratified by repeat\\nunit length (period) (default: False)"
    bubble_min: "Minimum x/y axis value to display on bubble plots"
    bubble_max: "Maximum x/y axis value to display on bubble plots"
    verbose: "Print helpful debugging info (default: False)"
    num_records: "For debugging, only process this many records"
    no_plot: "Don't output any plots. Only produce text output\\n(default: False)"
    vcf_type_one: "Type of --vcf1. Options=['gangstr', 'advntr',\\n'hipstr', 'eh', 'popstr'] (default: auto)"
    vcf_type_two: "Type of --vcf2. Options=['gangstr', 'advntr',\\n'hipstr', 'eh', 'popstr'] (default: auto)"
    ignore_phasing: "Treat all calls as if they are unphased (default:\\nFalse)"
    tool: ""
    for: ""
    comparing: ""
    genotypes: ""
    from: ""
    two: ""
    tr: ""
    v_cfs: ""
  }
  output {
    File out_stdout = stdout()
  }
}