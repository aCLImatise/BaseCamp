version 1.0

task RtgVcfeval {
  input {
    File? baseline
    File? bed_regions
    File? calls
    File? evaluation_regions
    Directory? directory_for_output
    Int? region
    String? template
    Boolean? all_records
    Boolean? decompose
    Boolean? ref_overlap
    String? sample
    Boolean? squash_ploidy
    Float? at_precision
    Float? at_sensitivity
    Boolean? no_roc
    Int? output_mode
    String? sort_order
    String? vcf_score_field
    Boolean? no_gzip
    Int? threads
  }
  command <<<
    rtg vcfeval \
      ~{if defined(baseline) then ("--baseline " +  '"' + baseline + '"') else ""} \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(calls) then ("--calls " +  '"' + calls + '"') else ""} \
      ~{if defined(evaluation_regions) then ("--evaluation-regions " +  '"' + evaluation_regions + '"') else ""} \
      ~{if defined(directory_for_output) then ("--output " +  '"' + directory_for_output + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if (all_records) then "--all-records" else ""} \
      ~{if (decompose) then "--decompose" else ""} \
      ~{if (ref_overlap) then "--ref-overlap" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (squash_ploidy) then "--squash-ploidy" else ""} \
      ~{if defined(at_precision) then ("--at-precision " +  '"' + at_precision + '"') else ""} \
      ~{if defined(at_sensitivity) then ("--at-sensitivity " +  '"' + at_sensitivity + '"') else ""} \
      ~{if (no_roc) then "--no-roc" else ""} \
      ~{if defined(output_mode) then ("--output-mode " +  '"' + output_mode + '"') else ""} \
      ~{if defined(sort_order) then ("--sort-order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(vcf_score_field) then ("--vcf-score-field " +  '"' + vcf_score_field + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    baseline: "VCF file containing baseline variants"
    bed_regions: "if set, only read VCF records that overlap the\\nranges contained in the specified BED file"
    calls: "VCF file containing called variants"
    evaluation_regions: "if set, evaluate within regions contained in\\nthe supplied BED file, allowing transborder\\nmatches. To be used for truth-set\\nhigh-confidence regions or other regions of\\ninterest where region boundary effects should\\nbe minimized"
    directory_for_output: "directory for output"
    region: "if set, only read VCF records within the\\nspecified range. The format is one of\\n<sequence_name>, <sequence_name>:<start>-<end>,\\n<sequence_name>:<pos>+<length> or\\n<sequence_name>:<pos>~<padding>"
    template: "SDF of the reference genome the variants are\\ncalled against"
    all_records: "use all records regardless of FILTER status\\n(Default is to only process records where\\nFILTER is \\\".\\\" or \\\"PASS\\\")"
    decompose: "decompose complex variants into smaller\\nconstituents to allow partial credit"
    ref_overlap: "allow alleles to overlap where bases of either\\nallele are same-as-ref (Default is to only\\nallow VCF anchor base overlap)"
    sample: "the name of the sample to select. Use\\n<baseline_sample>,<calls_sample> to select\\ndifferent sample names for baseline and calls.\\n(Required when using multi-sample VCF files)"
    squash_ploidy: "treat heterozygous genotypes as homozygous ALT\\nin both baseline and calls, to allow matches\\nthat ignore zygosity differences"
    at_precision: "output summary statistics where precision >=\\nsupplied value (Default is to summarize at\\nmaximum F-measure)"
    at_sensitivity: "output summary statistics where sensitivity >=\\nsupplied value (Default is to summarize at\\nmaximum F-measure)"
    no_roc: "do not produce ROCs"
    output_mode: "output reporting mode. Allowed values are\\n[split, annotate, combine, ga4gh, roc-only]\\n(Default is split)"
    sort_order: "the order in which to sort the ROC scores so\\nthat \\\"good\\\" scores come before \\\"bad\\\" scores.\\nAllowed values are [ascending, descending]\\n(Default is descending)"
    vcf_score_field: "the name of the VCF FORMAT field to use as the\\nROC score. Also valid are \\\"QUAL\\\", \\\"INFO.<name>\\\"\\nor \\\"FORMAT.<name>\\\" to select the named VCF\\nFORMAT or INFO field (Default is GQ)"
    no_gzip: "do not gzip the output"
    threads: "number of threads (Default is the number of\\navailable cores)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_for_output = "${in_directory_for_output}"
  }
}