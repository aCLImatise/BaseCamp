version 1.0

task PhenixpyRunSnpPipeline {
  input {
    String? var_workflow
    String? var_input
    Int? r_one
    Int? r_two
    String? reference
    String? sample_name
    String? outdir
    String? config
    Int? mapper
    String? mapper_options
    String? bam
    String? variant
    String? variant_options
    String? vcf
    Float? filters
    Array[String] annotators
    Boolean? keep_temp
    Boolean? json
    Boolean? json_info
  }
  command <<<
    phenix_py run_snp_pipeline \
      ~{if defined(var_workflow) then ("--workflow " +  '"' + var_workflow + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(r_one) then ("-r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("-r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(mapper_options) then ("--mapper-options " +  '"' + mapper_options + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(variant) then ("--variant " +  '"' + variant + '"') else ""} \
      ~{if defined(variant_options) then ("--variant-options " +  '"' + variant_options + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if defined(annotators) then ("--annotators " +  '"' + annotators + '"') else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (json_info) then "--json-info" else ""}
  >>>
  parameter_meta {
    var_workflow: ""
    var_input: ""
    r_one: "R1/Forward read in Fastq format."
    r_two: "R2/Reverse read in Fastq format."
    reference: "Rerefence to use for mapping."
    sample_name: "Name of the sample for mapper to include as read groups."
    outdir: ""
    config: ""
    mapper: "Available mappers: ['bwa', 'bowtie2']"
    mapper_options: "Custom maper options (advanced)"
    bam: ""
    variant: "Available variant callers: ['mpileup', 'gatk']"
    variant_options: "Custom variant options (advanced)"
    vcf: ""
    filters: "Filters to be applied to the VCF in key:value pairs, separated by comma (,). Available_filters: ['gq_score', 'dp4_ratio', 'ad_ratio', 'min_depth', 'mq_score', 'mq0_ratio', 'uncall_gt', 'qual_score', 'mq0f_ratio']. Recommendations: GATK: mq_score:30,min_depth:10,ad_ratio:0.9 Mpileup: mq_score:30,min_depth:10,dp4_ratio:0.9"
    annotators: "List of annotators to run before filters. Available: ['coverage']"
    keep_temp: "Keep intermediate files like BAMs and VCFs (default: False)."
    json: "Also write variant positions in filtered vcf as json file (default: False)."
    json_info: "When writing a json file, log some stats to stdout. (default: False)."
  }
  output {
    File out_stdout = stdout()
  }
}