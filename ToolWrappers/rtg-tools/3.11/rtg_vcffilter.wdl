version 1.0

task RtgVcffilter {
  input {
    Boolean? clear_failed_samples
    Boolean? all_samples
    File? bed_regions
    File? vcf_file_containing
    File? output_vcf_file
    Int? region
    Int? sample
    Int? density_window
    File? exclude_vcf
    File? include_bed
    File? include_vcf
    File? javascript
    String? keep_expr
    Int? keep_filter
    Int? keep_info
    Int? max_alleles
    Int? max_combined_read_depth
    Float? max_quality
    Int? min_alleles
    Int? min_combined_read_depth
    Float? min_quality
    Int? remove_filter
    Int? remove_info
    Boolean? remove_overlapping
    Float? max_ambiguity_ratio
    Float? max_avr_score
    Float? max_de_novo_score
    Float? max_genotype_quality
    Int? max_read_depth
    Float? min_avr_score
    Float? min_de_novo_score
    Float? min_genotype_quality
    Int? min_read_depth
    Boolean? non_snps_only
    Boolean? remove_same_as_ref
    Boolean? snps_only
    String? fail
    String? fail_samples
    File? add_header
    Boolean? no_gzip
    Boolean? no_header
    String discarded
    String records
    String in_del
    String reference
    String snp
  }
  command <<<
    rtg vcffilter \
      ~{discarded} \
      ~{records} \
      ~{in_del} \
      ~{reference} \
      ~{snp} \
      ~{if (clear_failed_samples) then "--clear-failed-samples" else ""} \
      ~{if (all_samples) then "--all-samples" else ""} \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(vcf_file_containing) then ("--input " +  '"' + vcf_file_containing + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(density_window) then ("--density-window " +  '"' + density_window + '"') else ""} \
      ~{if defined(exclude_vcf) then ("--exclude-vcf " +  '"' + exclude_vcf + '"') else ""} \
      ~{if defined(include_bed) then ("--include-bed " +  '"' + include_bed + '"') else ""} \
      ~{if defined(include_vcf) then ("--include-vcf " +  '"' + include_vcf + '"') else ""} \
      ~{if defined(javascript) then ("--javascript " +  '"' + javascript + '"') else ""} \
      ~{if defined(keep_expr) then ("--keep-expr " +  '"' + keep_expr + '"') else ""} \
      ~{if defined(keep_filter) then ("--keep-filter " +  '"' + keep_filter + '"') else ""} \
      ~{if defined(keep_info) then ("--keep-info " +  '"' + keep_info + '"') else ""} \
      ~{if defined(max_alleles) then ("--max-alleles " +  '"' + max_alleles + '"') else ""} \
      ~{if defined(max_combined_read_depth) then ("--max-combined-read-depth " +  '"' + max_combined_read_depth + '"') else ""} \
      ~{if defined(max_quality) then ("--max-quality " +  '"' + max_quality + '"') else ""} \
      ~{if defined(min_alleles) then ("--min-alleles " +  '"' + min_alleles + '"') else ""} \
      ~{if defined(min_combined_read_depth) then ("--min-combined-read-depth " +  '"' + min_combined_read_depth + '"') else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(remove_filter) then ("--remove-filter " +  '"' + remove_filter + '"') else ""} \
      ~{if defined(remove_info) then ("--remove-info " +  '"' + remove_info + '"') else ""} \
      ~{if (remove_overlapping) then "--remove-overlapping" else ""} \
      ~{if defined(max_ambiguity_ratio) then ("--max-ambiguity-ratio " +  '"' + max_ambiguity_ratio + '"') else ""} \
      ~{if defined(max_avr_score) then ("--max-avr-score " +  '"' + max_avr_score + '"') else ""} \
      ~{if defined(max_de_novo_score) then ("--max-denovo-score " +  '"' + max_de_novo_score + '"') else ""} \
      ~{if defined(max_genotype_quality) then ("--max-genotype-quality " +  '"' + max_genotype_quality + '"') else ""} \
      ~{if defined(max_read_depth) then ("--max-read-depth " +  '"' + max_read_depth + '"') else ""} \
      ~{if defined(min_avr_score) then ("--min-avr-score " +  '"' + min_avr_score + '"') else ""} \
      ~{if defined(min_de_novo_score) then ("--min-denovo-score " +  '"' + min_de_novo_score + '"') else ""} \
      ~{if defined(min_genotype_quality) then ("--min-genotype-quality " +  '"' + min_genotype_quality + '"') else ""} \
      ~{if defined(min_read_depth) then ("--min-read-depth " +  '"' + min_read_depth + '"') else ""} \
      ~{if (non_snps_only) then "--non-snps-only" else ""} \
      ~{if (remove_same_as_ref) then "--remove-same-as-ref" else ""} \
      ~{if (snps_only) then "--snps-only" else ""} \
      ~{if defined(fail) then ("--fail " +  '"' + fail + '"') else ""} \
      ~{if defined(fail_samples) then ("--fail-samples " +  '"' + fail_samples + '"') else ""} \
      ~{if defined(add_header) then ("--add-header " +  '"' + add_header + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clear_failed_samples: ", and --fail-samples options for alternatives."
    all_samples: "apply sample-specific criteria to all\\nsamples contained in the input VCF"
    bed_regions: "if set, only read VCF records that overlap\\nthe ranges contained in the specified BED\\nfile"
    vcf_file_containing: "VCF file containing variants to be\\nfiltered. Use '-' to read from standard\\ninput"
    output_vcf_file: "output VCF file. Use '-' to write to\\nstandard output. This option is required,\\nunless \\\"--javascript\\\" is being used"
    region: "if set, only read VCF records within the\\nspecified range. The format is one of\\n<sequence_name>,\\n<sequence_name>:<start>-<end>,\\n<sequence_name>:<pos>+<length> or\\n<sequence_name>:<pos>~<padding>"
    sample: "apply sample-specific criteria to the named\\nsample contained in the input VCF. May be\\nspecified 0 or more times"
    density_window: "window within which multiple variants are"
    exclude_vcf: "discard all variants that overlap with the\\nones in this file"
    include_bed: "only keep variants within the regions in\\nthis BED file"
    include_vcf: "only keep variants that overlap with the\\nones in this file"
    javascript: "javascript filtering functions for\\ndetermining whether to keep record. May be\\neither an expression or a file name. May be\\nspecified 0 or more times"
    keep_expr: "records for which this expression evaluates\\nto true will be retained"
    keep_filter: "only keep variants with this FILTER tag.\\nMay be specified 0 or more times, or as a\\ncomma separated list"
    keep_info: "only keep variants with this INFO tag. May\\nbe specified 0 or more times, or as a comma\\nseparated list"
    max_alleles: "maximum number of alleles (REF included)"
    max_combined_read_depth: "maximum allowed combined read depth"
    max_quality: "maximum allowed quality"
    min_alleles: "minimum number of alleles (REF included)"
    min_combined_read_depth: "minimum allowed combined read depth"
    min_quality: "minimum allowed quality"
    remove_filter: "remove variants with this FILTER tag. May\\nbe specified 0 or more times, or as a comma\\nseparated list"
    remove_info: "remove variants with this INFO tag. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    remove_overlapping: "remove records that overlap with previous"
    max_ambiguity_ratio: "maximum allowed ambiguity ratio"
    max_avr_score: "maximum allowed AVR score"
    max_de_novo_score: "maximum de novo score threshold"
    max_genotype_quality: "maximum allowed genotype quality"
    max_read_depth: "maximum allowed sample read depth"
    min_avr_score: "minimum allowed AVR score"
    min_de_novo_score: "minimum de novo score threshold"
    min_genotype_quality: "minimum allowed genotype quality"
    min_read_depth: "minimum allowed sample read depth"
    non_snps_only: "only keep where sample variant is MNP or"
    remove_same_as_ref: "remove where sample is same as reference"
    snps_only: "only keep where sample variant is a simple"
    fail: "retain failed records, add the provided\\nlabel to the FILTER field"
    fail_samples: "retain failed records, add the provided\\nlabel to the sample FT field"
    add_header: "|FILE      file containing VCF header lines to add, or\\na literal header line. May be specified 0\\nor more times"
    no_gzip: "do not gzip the output"
    no_header: "prevent VCF header from being written"
    discarded: "--exclude-bed=FILE            discard all variants within the regions in"
    records: "Filtering (Sample based)"
    in_del: "--remove-all-same-as-ref      remove where all samples are same as"
    reference: "--remove-hom                  remove where sample is homozygous"
    snp: "Reporting"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}