version 1.0

task StatSTR {
  input {
    File? input_str_vcf
    File? out
    String? vcf_type
    Int? precision
    File? samples
    Int? sample_prefixes
    File? region
    Boolean? thresh
    Boolean? a_freq
    Boolean? a_count
    Boolean? h_wep
    Boolean? het
    Boolean? entropy
    Boolean? mean
    Boolean? mode
    Boolean? var
    Boolean? num_called
    Boolean? use_length
    Boolean? plot_a_freq
    String tool
    String for
    String computing
    String stats
    String on
    String a
    String tr
    String var_26
    File var_file
  }
  command <<<
    statSTR \
      ~{tool} \
      ~{for} \
      ~{computing} \
      ~{stats} \
      ~{on} \
      ~{a} \
      ~{tr} \
      ~{var_26} \
      ~{var_file} \
      ~{if defined(input_str_vcf) then ("--vcf " +  '"' + input_str_vcf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(sample_prefixes) then ("--sample-prefixes " +  '"' + sample_prefixes + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (thresh) then "--thresh" else ""} \
      ~{if (a_freq) then "--afreq" else ""} \
      ~{if (a_count) then "--acount" else ""} \
      ~{if (h_wep) then "--hwep" else ""} \
      ~{if (het) then "--het" else ""} \
      ~{if (entropy) then "--entropy" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (var) then "--var" else ""} \
      ~{if (num_called) then "--numcalled" else ""} \
      ~{if (use_length) then "--use-length" else ""} \
      ~{if (plot_a_freq) then "--plot-afreq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trtools:4.0.0--py_0"
  }
  parameter_meta {
    input_str_vcf: "Input STR VCF file"
    out: "Output file prefix. Use stdout to print file to\\nstandard output. In addition, if not stdout then\\ntiming diagnostics are print to stdout."
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh',\\n'popstr'] (default: auto)"
    precision: "How much precision to use when printing decimals\\n(default: 3)"
    samples: "File containing list of samples to include. Or a\\ncomma-separated list of files to compute stats\\nseparate for each group of samples"
    sample_prefixes: "Prefixes to name output for each samples group. By\\ndefault uses 1,2,3 etc."
    region: "Restrict to the region chrom:start-end. Requires file\\nto bgzipped and tabix indexed."
    thresh: "Output threshold field (max allele size, used for\\nGangSTR strinfo). (default: False)"
    a_freq: "Output allele frequencies (default: False)"
    a_count: "Output allele counts (default: False)"
    h_wep: "Output HWE p-values per loci. (default: False)"
    het: "Output the heterozygosity of each locus. (default:\\nFalse)"
    entropy: "Output the entropy of each locus. (default: False)"
    mean: "Output mean of the allele frequencies. (default:\\nFalse)"
    mode: "Output mode of the allele frequencies. (default:\\nFalse)"
    var: "Output variance of the allele frequencies. (default:\\nFalse)"
    num_called: "Output number of samples called. (default: False)"
    use_length: "Calculate per-locus stats (het, HWE) collapsing\\nalleles by length. This is implicitly true for\\ngenotypers which only emit length based genotypes.\\n(default: False)"
    plot_a_freq: "Output allele frequency plot. Will only do for a\\nmaximum of 10 TRs. (default: False)"
    tool: ""
    for: ""
    computing: ""
    stats: ""
    on: ""
    a: ""
    tr: ""
    var_26: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}