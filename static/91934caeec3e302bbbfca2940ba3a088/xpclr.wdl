version 1.0

task Xpclr {
  input {
    File? out
    Int? format
    File? input_file_vcf
    Int? g_dist_key
    File? samples_a
    File? samples_b
    String? r_rate
    File? using_xpclr_specs
    File? popa
    File? pop_b
    String? chr
    String? ld
    Boolean? phased
    Int? verbose
    Int? max_snps
    Int? min_snps
    Int? size
    String? start
    String? stop
    Int? step
  }
  command <<<
    xpclr \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_file_vcf) then ("--input " +  '"' + input_file_vcf + '"') else ""} \
      ~{if defined(g_dist_key) then ("--gdistkey " +  '"' + g_dist_key + '"') else ""} \
      ~{if defined(samples_a) then ("--samplesA " +  '"' + samples_a + '"') else ""} \
      ~{if defined(samples_b) then ("--samplesB " +  '"' + samples_b + '"') else ""} \
      ~{if defined(r_rate) then ("--rrate " +  '"' + r_rate + '"') else ""} \
      ~{if defined(using_xpclr_specs) then ("--map " +  '"' + using_xpclr_specs + '"') else ""} \
      ~{if defined(popa) then ("--popA " +  '"' + popa + '"') else ""} \
      ~{if defined(pop_b) then ("--popB " +  '"' + pop_b + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(ld) then ("--ld " +  '"' + ld + '"') else ""} \
      ~{if (phased) then "--phased" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(max_snps) then ("--maxsnps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(min_snps) then ("--minsnps " +  '"' + min_snps + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "output file"
    format: "input expected. One of \\\"vcf\\\" (default), \\\"hdf5\\\", \\\"zarr\\\"\\nor \\\"txt\\\""
    input_file_vcf: "input file vcf or hdf5"
    g_dist_key: "key for genetic position in variants table of hdf5/VCF"
    samples_a: "Samples comprising population A. Comma separated list\\nor path to file with each ID on a line"
    samples_b: "Samples comprising population B. Comma separated list\\nor path to file with each ID on a line"
    r_rate: "recombination rate per base"
    using_xpclr_specs: "If using XPCLR-style text format. Input map file as\\nper XPCLR specs (tab separated)"
    popa: "If using XPCLR-style text format. Filepath to\\npopulation A genotypes (space separated)"
    pop_b: "If using XPCLR-style text format. Filepath to\\npopulation B genotypes (space separated)"
    chr: "Which contig analysis is based on"
    ld: "LD cutoff to apply for weighting"
    phased: "whether data is phased for more precise r2 calculation"
    verbose: "How verbose to be in logging. 10=DEBUG, 20=INFO,\\n30=WARN, 40=ERROR, 50=CRITICAL"
    max_snps: "max SNPs in a window"
    min_snps: "min SNPs in a window"
    size: "window size in base pairs"
    start: "start base position for windows"
    stop: "stop base position for windows"
    step: "step size for sliding windows"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}