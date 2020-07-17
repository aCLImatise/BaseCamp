version 1.0

task StatSTR {
  input {
    String? input_str_vcf
    String? out
    String? vcf_type
    String? samples
    String? sample_prefixes
    String? region
    Boolean? thresh
    Boolean? a_freq
    Boolean? a_count
    Boolean? h_wep
    Boolean? het
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
    String str
    String var_23
    File files
  }
  command <<<
    statSTR \
      ~{tool} \
      ~{for} \
      ~{computing} \
      ~{stats} \
      ~{on} \
      ~{str} \
      ~{var_23} \
      ~{files} \
      ~{if defined(input_str_vcf) then ("--vcf " +  '"' + input_str_vcf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(sample_prefixes) then ("--sample-prefixes " +  '"' + sample_prefixes + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--thresh" false="" thresh} \
      ~{true="--afreq" false="" a_freq} \
      ~{true="--acount" false="" a_count} \
      ~{true="--hwep" false="" h_wep} \
      ~{true="--het" false="" het} \
      ~{true="--mean" false="" mean} \
      ~{true="--mode" false="" mode} \
      ~{true="--var" false="" var} \
      ~{true="--numcalled" false="" num_called} \
      ~{true="--use-length" false="" use_length} \
      ~{true="--plot-afreq" false="" plot_a_freq}
  >>>
  parameter_meta {
    input_str_vcf: "Input STR VCF file"
    out: "Output file prefix. Use stdout to print file to standard output."
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    samples: "File containing list of samples to include. Or a comma-separated list of files to compute stats separate for each group of samples"
    sample_prefixes: "Prefixes to name output for each samples group. By default uses 1,2,3 etc."
    region: "Restrict to this region chrom:start-end"
    thresh: "Output threshold field (max allele size, used for GangSTR strinfo)."
    a_freq: "Output allele frequencies"
    a_count: "Output allele counts"
    h_wep: "Output HWE p-values per loci."
    het: "Output heterozygosity of each locus."
    mean: "Output mean of allele frequencies."
    mode: "Output mode of allele frequencies."
    var: "Output variance of allele frequencies."
    num_called: "Output number of samples called."
    use_length: "Calculate per-locus stats (het, HWE) collapsing alleles by length"
    plot_a_freq: "Output allele frequency plot. Will only do for a maximum of 10 TRs."
    tool: ""
    for: ""
    computing: ""
    stats: ""
    on: ""
    str: ""
    var_23: ""
    files: ""
  }
}