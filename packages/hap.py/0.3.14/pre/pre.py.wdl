version 1.0

task Prepy {
  input {
    String? location
    Boolean? pass_only
    String? filters_only
    File? restrict_regions
    File? target_regions
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
    Boolean? convert_gvc_f_to_vcf
    String? gender
    File? reference
    Int? window_size
    Int? threads
    File? log_file
    Boolean? quiet
    String vcf_file_process
    String output_filename
    String stderr
  }
  command <<<
    pre_py \
      ~{vcf_file_process} \
      ~{output_filename} \
      ~{stderr} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if (pass_only) then "--pass-only" else ""} \
      ~{if defined(filters_only) then ("--filters-only " +  '"' + filters_only + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if (left_shift) then "--leftshift" else ""} \
      ~{if (no_left_shift) then "--no-leftshift" else ""} \
      ~{if (decompose) then "--decompose" else ""} \
      ~{if (no_decompose) then "--no-decompose" else ""} \
      ~{if (bcf_tools_norm) then "--bcftools-norm" else ""} \
      ~{if (fix_chr) then "--fixchr" else ""} \
      ~{if (no_fix_chr) then "--no-fixchr" else ""} \
      ~{if (bcf) then "--bcf" else ""} \
      ~{if (somatic) then "--somatic" else ""} \
      ~{if defined(set_gt) then ("--set-gt " +  '"' + set_gt + '"') else ""} \
      ~{if (filter_non_ref) then "--filter-nonref" else ""} \
      ~{if (convert_gvc_f_to_vcf) then "--convert-gvcf-to-vcf" else ""} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0"
  }
  parameter_meta {
    location: "Comma-separated list of locations [use naming after\\npreprocessing], when not specified will use whole VCF."
    pass_only: "Keep only PASS variants."
    filters_only: "Specify a comma-separated list of filters to apply (by\\ndefault all filters are ignored / passed on."
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R\\nin bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T\\nin bcftools)."
    left_shift: "Left-shift variants safely."
    no_left_shift: "Do not left-shift variants safely."
    decompose: "Decompose variants into primitives. This results in\\nmore granular counts."
    no_decompose: "Do not decompose variants into primitives."
    bcf_tools_norm: "Enable preprocessing through bcftools norm -c x -D\\n(requires external preprocessing to be switched on)."
    fix_chr: "Add chr prefix to VCF records where necessary\\n(default: auto, attempt to match reference)."
    no_fix_chr: "Do not add chr prefix to VCF records (default: auto,\\nattempt to match reference)."
    bcf: "Use BCF internally. This is the default when the input\\nfile is in BCF format already. Using BCF can speed up\\ntemp file access, but may fail for VCF files that have\\nbroken headers or records that don't comply with the\\nheader."
    somatic: "Assume the input file is a somatic call file and\\nsquash all columns into one, putting all FORMATs into\\nINFO + use half genotypes (see also --set-gt). This\\nwill replace all sample columns and replace them with\\na single one."
    set_gt: "This is used to treat Strelka somatic files Possible\\nvalues for this parameter: half / hemi / het / hom /\\nhalf to assign one of the following genotypes to the\\nresulting sample: 1 | 0/1 | 1/1 | ./1. This will\\nreplace all sample columns and replace them with a\\nsingle one."
    filter_non_ref: "Remove any variants genotyped as <NON_REF>."
    convert_gvc_f_to_vcf: "Convert the input set from genome VCF format to a VCF\\nbefore processing."
    gender: "Specify sex. This determines how haploid calls on chrX\\nget treated: for male samples, all non-ref calls (in\\nthe truthset only when running through hap.py) are\\ngiven a 1/1 genotype."
    reference: "Specify a reference file."
    window_size: "Preprocessing window size (variants further apart than\\nthat size are not expected to interfere)."
    threads: "Number of threads to use."
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    vcf_file_process: "VCF file to process."
    output_filename: "Output filename."
    stderr: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
  }
}