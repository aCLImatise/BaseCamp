version 1.0

task Biopetvcffilter {
  input {
    String? log_level
    File? input_vcf
    File? output_vcf
    File? inverted_output_vcf
    Int? min_sample_depth
    Int? min_total_depth
    Int? min_alternate_depth
    Int? min_samples_pass
    Boolean? rest_odom
    Boolean? trio_compound
    String? de_novo_in_sample
    Boolean? de_novo_trio
    Boolean? trio_loss_of_het
    Int? must_have_variant
    String? must_not_have_variant
    String? called_in
    Boolean? must_have_genotype
    Boolean? diff_genotype
    Boolean? filter_het_var_to_hom_var
    Boolean? filter_ref_calls
    Boolean? filter_no_calls
    Boolean? unique_only
    Boolean? shared_only
    Int? min_called
    Int? min_qual_score
    String? id
    File? id_file
    String? min_genome_quality
    String? advanced_groups
    String? min_avg_variant_gq
    Boolean? info_array_must_contain
    String vcf_filter
  }
  command <<<
    biopet_vcffilter \
      ~{vcf_filter} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_vcf) then ("--inputVcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_vcf) then ("--outputVcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(inverted_output_vcf) then ("--invertedOutputVcf " +  '"' + inverted_output_vcf + '"') else ""} \
      ~{if defined(min_sample_depth) then ("--minSampleDepth " +  '"' + min_sample_depth + '"') else ""} \
      ~{if defined(min_total_depth) then ("--minTotalDepth " +  '"' + min_total_depth + '"') else ""} \
      ~{if defined(min_alternate_depth) then ("--minAlternateDepth " +  '"' + min_alternate_depth + '"') else ""} \
      ~{if defined(min_samples_pass) then ("--minSamplesPass " +  '"' + min_samples_pass + '"') else ""} \
      ~{if (rest_odom) then "--resToDom" else ""} \
      ~{if (trio_compound) then "--trioCompound" else ""} \
      ~{if defined(de_novo_in_sample) then ("--deNovoInSample " +  '"' + de_novo_in_sample + '"') else ""} \
      ~{if (de_novo_trio) then "--deNovoTrio" else ""} \
      ~{if (trio_loss_of_het) then "--trioLossOfHet" else ""} \
      ~{if defined(must_have_variant) then ("--mustHaveVariant " +  '"' + must_have_variant + '"') else ""} \
      ~{if defined(must_not_have_variant) then ("--mustNotHaveVariant " +  '"' + must_not_have_variant + '"') else ""} \
      ~{if defined(called_in) then ("--calledIn " +  '"' + called_in + '"') else ""} \
      ~{if (must_have_genotype) then "--mustHaveGenotype" else ""} \
      ~{if (diff_genotype) then "--diffGenotype" else ""} \
      ~{if (filter_het_var_to_hom_var) then "--filterHetVarToHomVar" else ""} \
      ~{if (filter_ref_calls) then "--filterRefCalls" else ""} \
      ~{if (filter_no_calls) then "--filterNoCalls" else ""} \
      ~{if (unique_only) then "--uniqueOnly" else ""} \
      ~{if (shared_only) then "--sharedOnly" else ""} \
      ~{if defined(min_called) then ("--minCalled " +  '"' + min_called + '"') else ""} \
      ~{if defined(min_qual_score) then ("--minQualScore " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(id_file) then ("--idFile " +  '"' + id_file + '"') else ""} \
      ~{if defined(min_genome_quality) then ("--minGenomeQuality " +  '"' + min_genome_quality + '"') else ""} \
      ~{if defined(advanced_groups) then ("--advancedGroups " +  '"' + advanced_groups + '"') else ""} \
      ~{if defined(min_avg_variant_gq) then ("--minAvgVariantGQ " +  '"' + min_avg_variant_gq + '"') else ""} \
      ~{if (info_array_must_contain) then "--infoArrayMustContain" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_vcf: "Input vcf file"
    output_vcf: "Output vcf file"
    inverted_output_vcf: "inverted output vcf file"
    min_sample_depth: "Min value for DP in genotype fields"
    min_total_depth: "Min value of DP field in INFO fields"
    min_alternate_depth: "Min value of AD field in genotype fields"
    min_samples_pass: "Min number off samples to pass --minAlternateDepth, --minBamAlternateDepth and --minSampleDepth"
    rest_odom: "<child:father:mother>\\nOnly shows variants where child is homozygous and both parants hetrozygous"
    trio_compound: "<child:father:mother>\\nOnly shows variants where child is a compound variant combined from both parants"
    de_novo_in_sample: "Only show variants that contain unique alleles in complete set for given sample"
    de_novo_trio: "<child:father:mother>\\nOnly show variants that are denovo in the trio"
    trio_loss_of_het: "<child:father:mother>\\nOnly show variants where a loss of hetrozygosity is detected"
    must_have_variant: "Given sample must have 1 alternative allele"
    must_not_have_variant: "Given sample may not have alternative alleles"
    called_in: "Must be called in this sample"
    must_have_genotype: "<sample:genotype>\\nMust have genotoype <genotype> for this sample. Genotype can be NO_CALL, HOM_REF, HET, HOM_VAR, UNAVAILABLE, MIXED"
    diff_genotype: "<sample:sample>\\nGiven samples must have a different genotype"
    filter_het_var_to_hom_var: "<sample:sample>\\nIf variants in sample 1 are heterogeneous and alternative alleles are homogeneous in sample 2 variants are filtered"
    filter_ref_calls: "Filter when there are only ref calls"
    filter_no_calls: "Filter when there are only no calls"
    unique_only: "Filter when there more then 1 sample have this variant"
    shared_only: "Filter when not all samples have this variant"
    min_called: "Number of sample where a call must be made"
    min_qual_score: "Min qual score"
    id: "Id that may pass the filter"
    id_file: "File that contain list of IDs to get from vcf file"
    min_genome_quality: "The minimum value in the Genome Quality field."
    advanced_groups: "All members of groups sprated with a ','"
    min_avg_variant_gq: "Filter on the average GQ of variants"
    info_array_must_contain: ":<key>=<value>\\nInfo field must be a array and should match the given regex\\n"
    vcf_filter: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf = "${in_output_vcf}"
    File out_inverted_output_vcf = "${in_inverted_output_vcf}"
  }
}