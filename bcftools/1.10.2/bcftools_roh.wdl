version 1.0

task BcftoolsRoh {
  input {
    Float? af_dflt
    String? af_tag
    File? af_file
    Boolean? buffer_size
    Boolean? estimate_af
    String? exclude
    Float? gts_only
    String? include
    Boolean? ignore_hom_ref
    Boolean? skip_indels
    File? genetic_map
    Float? rec_rate
    File? write_output_file
    Boolean? output_type
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Int? threads
    Float? hw_to_az
    Float? az_to_hw
    Float? viterbi_training
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools roh \
      ~{in_dot_vcf_do_tgz} \
      ~{if defined(af_dflt) then ("--AF-dflt " +  '"' + af_dflt + '"') else ""} \
      ~{if defined(af_tag) then ("--AF-tag " +  '"' + af_tag + '"') else ""} \
      ~{if defined(af_file) then ("--AF-file " +  '"' + af_file + '"') else ""} \
      ~{true="--buffer-size" false="" buffer_size} \
      ~{true="--estimate-AF" false="" estimate_af} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(gts_only) then ("--GTs-only " +  '"' + gts_only + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{true="--ignore-homref" false="" ignore_hom_ref} \
      ~{true="--skip-indels" false="" skip_indels} \
      ~{if defined(genetic_map) then ("--genetic-map " +  '"' + genetic_map + '"') else ""} \
      ~{if defined(rec_rate) then ("--rec-rate " +  '"' + rec_rate + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{true="--output-type" false="" output_type} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(hw_to_az) then ("--hw-to-az " +  '"' + hw_to_az + '"') else ""} \
      ~{if defined(az_to_hw) then ("--az-to-hw " +  '"' + az_to_hw + '"') else ""} \
      ~{if defined(viterbi_training) then ("--viterbi-training " +  '"' + viterbi_training + '"') else ""}
  >>>
  parameter_meta {
    af_dflt: "if AF is not known, use this allele frequency [skip]"
    af_tag: "use TAG for allele frequency"
    af_file: "read allele frequencies from file (CHR\tPOS\tREF\tALT\tAF)"
    buffer_size: "<int[,int]>      buffer size and the number of overlapping sites, 0 for unlimited [0] If the first number is negative, it is interpreted as the maximum memory to use, in MB. The default overlap is set to roughly 1% of the buffer size."
    estimate_af: "[TAG],<file>     estimate AF from FORMAT/TAG (GT or PL) of all samples (\"-\") or samples listed in <file>. If TAG is not given, the frequency is estimated from GT by default"
    exclude: "exclude sites for which the expression is true"
    gts_only: "use GTs and ignore PLs, instead using <float> for PL of the two least likely genotypes. Safe value to use is 30 to account for GT errors."
    include: "select sites for which the expression is true"
    ignore_hom_ref: "skip hom-ref genotypes (0/0)"
    skip_indels: "skip indels as their genotypes are enriched for errors"
    genetic_map: "genetic map in IMPUTE2 format, single file or mask, where string \"{CHROM}\" is replaced with chromosome name"
    rec_rate: "constant recombination rate per bp"
    write_output_file: "write output to a file [standard output]"
    output_type: "[srz]            output s:per-site, r:regions, z:compressed [sr]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "list of samples to analyze [all samples]"
    samples_file: "file of samples to analyze [all samples]"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    hw_to_az: "P(AZ|HW) transition probability from HW (Hardy-Weinberg) to AZ (autozygous) state [6.7e-8]"
    az_to_hw: "P(HW|AZ) transition probability from AZ to HW state [5e-9]"
    viterbi_training: "estimate HMM parameters, <float> is the convergence threshold, e.g. 1e-10 (experimental)"
    in_dot_vcf_do_tgz: ""
  }
}