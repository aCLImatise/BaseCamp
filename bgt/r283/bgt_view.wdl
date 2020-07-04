version 1.0

task BgtView {
  input {
    String? samples_list_samplesample
    String? region
    File? extract_variants_overlapping
    Boolean? exclude_variants_overlapping
    Int? process_intth_record
    Int? process_most_records
    File? variant_annotations_work
    Boolean? load_variant_annotations
    String? alleles_list_chrbasedposreflenseq
    String? frequency_filters
    Boolean? bcf_output_effective
    Int? compression_level_bcf
    Boolean? equivalent_bl_b
    Boolean? output_sample_genotypes
    Boolean? write_acan_info
    Boolean? show_samples_set
    Boolean? count_haplotypes_set
    String? commadelimited_list_ac
    String bgt_prefix
  }
  command <<<
    bgt view \
      ~{bgt_prefix} \
      ~{if defined(samples_list_samplesample) then ("-s " +  '"' + samples_list_samplesample + '"') else ""} \
      ~{if defined(region) then ("-r " +  '"' + region + '"') else ""} \
      ~{if defined(extract_variants_overlapping) then ("-B " +  '"' + extract_variants_overlapping + '"') else ""} \
      ~{true="-e" false="" exclude_variants_overlapping} \
      ~{if defined(process_intth_record) then ("-i " +  '"' + process_intth_record + '"') else ""} \
      ~{if defined(process_most_records) then ("-n " +  '"' + process_most_records + '"') else ""} \
      ~{if defined(variant_annotations_work) then ("-d " +  '"' + variant_annotations_work + '"') else ""} \
      ~{true="-M" false="" load_variant_annotations} \
      ~{if defined(alleles_list_chrbasedposreflenseq) then ("-a " +  '"' + alleles_list_chrbasedposreflenseq + '"') else ""} \
      ~{if defined(frequency_filters) then ("-f " +  '"' + frequency_filters + '"') else ""} \
      ~{true="-b" false="" bcf_output_effective} \
      ~{if defined(compression_level_bcf) then ("-l " +  '"' + compression_level_bcf + '"') else ""} \
      ~{true="-u" false="" equivalent_bl_b} \
      ~{true="-G" false="" output_sample_genotypes} \
      ~{true="-C" false="" write_acan_info} \
      ~{true="-S" false="" show_samples_set} \
      ~{true="-H" false="" count_haplotypes_set} \
      ~{if defined(commadelimited_list_ac) then ("-t " +  '"' + commadelimited_list_ac + '"') else ""}
  >>>
  parameter_meta {
    samples_list_samplesample: "samples list (,sample1,sample2 or a file or expr; see Notes below) [all]"
    region: "region [all]"
    extract_variants_overlapping: "extract variants overlapping BED FILE []"
    exclude_variants_overlapping: "exclude variants overlapping BED FILE (effective with -B)"
    process_intth_record: "process from the INT-th record (1-based) []"
    process_most_records: "process at most INT records []"
    variant_annotations_work: "variant annotations in FMF (to work with -a) []"
    load_variant_annotations: "load variant annotations in RAM (only with -d)"
    alleles_list_chrbasedposreflenseq: "alleles list chr:1basedPos:refLen:seq (,allele1,allele2 or a file or expr) []"
    frequency_filters: "frequency filters []"
    bcf_output_effective: "BCF output (effective without -S/-H)"
    compression_level_bcf: "compression level for BCF [default]"
    equivalent_bl_b: "equivalent to -bl0 (overriding -b and -l)"
    output_sample_genotypes: "don't output sample genotypes"
    write_acan_info: "write AC/AN to the INFO field (auto applied with -f or multipl -s)"
    show_samples_set: "show samples with a set of alleles (with -a)"
    count_haplotypes_set: "count of haplotypes with a set of alleles (with -a)"
    commadelimited_list_ac: "comma-delimited list of fields to output. Accepted variables: AC, AN, AC#, AN#, CHROM, POS, END, REF, ALT (# for a group number)"
    bgt_prefix: ""
  }
}