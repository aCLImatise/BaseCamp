version 1.0

task Pre.py {
  input {
    String? location
    Boolean? pass_only
    String? filters_only
    String? restrict_regions
    String? target_regions
    Boolean? left_shift
    Boolean? no_left_shift
    Boolean? decompose
    Boolean? no_decompose
    Boolean? bcf_tools_norm
    Boolean? fix_chr
    Boolean? no_fix_chr
    Boolean? bcf
    Boolean? somatic
    String? set_gt
    Boolean? filter_non_ref
    Boolean? convert_gvc_f_truth
    Boolean? convert_gvc_f_query
    String? gender
    String? reference
    String? window_size
    String? threads
    String? log_file
    Boolean? verbose
    Boolean? quiet
    String vcf_file_process
    String output_filename
  }
  command <<<
    pre.py \
      ~{vcf_file_process} \
      ~{output_filename} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{true="--pass-only" false="" pass_only} \
      ~{if defined(filters_only) then ("--filters-only " +  '"' + filters_only + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{true="--leftshift" false="" left_shift} \
      ~{true="--no-leftshift" false="" no_left_shift} \
      ~{true="--decompose" false="" decompose} \
      ~{true="--no-decompose" false="" no_decompose} \
      ~{true="--bcftools-norm" false="" bcf_tools_norm} \
      ~{true="--fixchr" false="" fix_chr} \
      ~{true="--no-fixchr" false="" no_fix_chr} \
      ~{true="--bcf" false="" bcf} \
      ~{true="--somatic" false="" somatic} \
      ~{if defined(set_gt) then ("--set-gt " +  '"' + set_gt + '"') else ""} \
      ~{true="--filter-nonref" false="" filter_non_ref} \
      ~{true="--convert-gvcf-truth" false="" convert_gvc_f_truth} \
      ~{true="--convert-gvcf-query" false="" convert_gvc_f_query} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    location: "Comma-separated list of locations [use naming after preprocessing], when not specified will use whole VCF."
    pass_only: "Keep only PASS variants."
    filters_only: "Specify a comma-separated list of filters to apply (by default all filters are ignored / passed on."
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R in bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T in bcftools)."
    left_shift: "Left-shift variants safely."
    no_left_shift: "Do not left-shift variants safely."
    decompose: "Decompose variants into primitives. This results in more granular counts."
    no_decompose: "Do not decompose variants into primitives."
    bcf_tools_norm: "Enable preprocessing through bcftools norm -c x -D (requires external preprocessing to be switched on)."
    fix_chr: "Add chr prefix to VCF records where necessary (default: auto, attempt to match reference)."
    no_fix_chr: "Do not add chr prefix to VCF records (default: auto, attempt to match reference)."
    bcf: "Use BCF internally. This is the default when the input file is in BCF format already. Using BCF can speed up temp file access, but may fail for VCF files that have broken headers or records that don't comply with the header."
    somatic: "Assume the input file is a somatic call file and squash all columns into one, putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will replace all sample columns and replace them with a single one."
    set_gt: "This is used to treat Strelka somatic files Possible values for this parameter: half / hemi / het / hom / half to assign one of the following genotypes to the resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and replace them with a single one."
    filter_non_ref: "Remove any variants genotyped as <NON_REF>."
    convert_gvc_f_truth: "Convert the truth set from genome VCF format to a VCF before processing."
    convert_gvc_f_query: "Convert the query set from genome VCF format to a VCF before processing."
    gender: "Specify sex. This determines how haploid calls on chrX get treated: for male samples, all non-ref calls (in the truthset only when running through hap.py) are given a 1/1 genotype."
    reference: "Specify a reference file."
    window_size: "Preprocessing window size (variants further apart than that size are not expected to interfere)."
    threads: "Number of threads to use."
    log_file: "Write logging information into file rather than to stderr"
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    vcf_file_process: "VCF file to process."
    output_filename: "Output filename."
  }
}