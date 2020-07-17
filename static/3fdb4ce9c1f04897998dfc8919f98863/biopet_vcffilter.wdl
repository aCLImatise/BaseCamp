version 1.0

task BiopetVcffilter {
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
    String? must_have_variant
    String? must_not_have_variant
    String? called_in
    Boolean? must_have_genotype
    Boolean? diff_genotype
    Boolean? filter_het_var_to_hom_var
    Boolean? filter_ref_calls
    Boolean? filter_no_calls
    Boolean? unique_only
    Boolean? shared_only
    String? min_called
    String? min_qual_score
    String? id
    String? id_file
    String? min_genome_quality
    String? advanced_groups
    String? min_avg_variant_gq
    Boolean? info_array_must_contain
    String vcf_filter
  }
  command <<<
    biopet-vcffilter \
      ~{vcf_filter} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_vcf) then ("--inputVcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_vcf) then ("--outputVcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(inverted_output_vcf) then ("--invertedOutputVcf " +  '"' + inverted_output_vcf + '"') else ""} \
      ~{if defined(min_sample_depth) then ("--minSampleDepth " +  '"' + min_sample_depth + '"') else ""} \
      ~{if defined(min_total_depth) then ("--minTotalDepth " +  '"' + min_total_depth + '"') else ""} \
      ~{if defined(min_alternate_depth) then ("--minAlternateDepth " +  '"' + min_alternate_depth + '"') else ""} \
      ~{if defined(min_samples_pass) then ("--minSamplesPass " +  '"' + min_samples_pass + '"') else ""} \
      ~{true="--resToDom" false="" rest_odom} \
      ~{true="--trioCompound" false="" trio_compound} \
      ~{if defined(de_novo_in_sample) then ("--deNovoInSample " +  '"' + de_novo_in_sample + '"') else ""} \
      ~{true="--deNovoTrio" false="" de_novo_trio} \
      ~{true="--trioLossOfHet" false="" trio_loss_of_het} \
      ~{if defined(must_have_variant) then ("--mustHaveVariant " +  '"' + must_have_variant + '"') else ""} \
      ~{if defined(must_not_have_variant) then ("--mustNotHaveVariant " +  '"' + must_not_have_variant + '"') else ""} \
      ~{if defined(called_in) then ("--calledIn " +  '"' + called_in + '"') else ""} \
      ~{true="--mustHaveGenotype" false="" must_have_genotype} \
      ~{true="--diffGenotype" false="" diff_genotype} \
      ~{true="--filterHetVarToHomVar" false="" filter_het_var_to_hom_var} \
      ~{true="--filterRefCalls" false="" filter_ref_calls} \
      ~{true="--filterNoCalls" false="" filter_no_calls} \
      ~{true="--uniqueOnly" false="" unique_only} \
      ~{true="--sharedOnly" false="" shared_only} \
      ~{if defined(min_called) then ("--minCalled " +  '"' + min_called + '"') else ""} \
      ~{if defined(min_qual_score) then ("--minQualScore " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(id_file) then ("--idFile " +  '"' + id_file + '"') else ""} \
      ~{if defined(min_genome_quality) then ("--minGenomeQuality " +  '"' + min_genome_quality + '"') else ""} \
      ~{if defined(advanced_groups) then ("--advancedGroups " +  '"' + advanced_groups + '"') else ""} \
      ~{if defined(min_avg_variant_gq) then ("--minAvgVariantGQ " +  '"' + min_avg_variant_gq + '"') else ""} \
      ~{true="--infoArrayMustContain" false="" info_array_must_contain}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_vcf: "Input vcf file"
    output_vcf: "Output vcf file"
    inverted_output_vcf: "inverted output vcf file"
    min_sample_depth: "Min value for DP in genotype fields"
    min_total_depth: "Min value of DP field in INFO fields"
    min_alternate_depth: "Min value of AD field in genotype fields"
    min_samples_pass: "Min number off samples to pass --minAlternateDepth, --minBamAlternateDepth and --minSampleDepth"
    rest_odom: "<child:father:mother> Only shows variants where child is homozygous and both parants hetrozygous"
    trio_compound: "<child:father:mother> Only shows variants where child is a compound variant combined from both parants"
    de_novo_in_sample: "Only show variants that contain unique alleles in complete set for given sample"
    de_novo_trio: "<child:father:mother> Only show variants that are denovo in the trio"
    trio_loss_of_het: "<child:father:mother> Only show variants where a loss of hetrozygosity is detected"
    must_have_variant: "Given sample must have 1 alternative allele"
    must_not_have_variant: "Given sample may not have alternative alleles"
    called_in: "Must be called in this sample"
    must_have_genotype: "<sample:genotype> Must have genotoype <genotype> for this sample. Genotype can be NO_CALL, HOM_REF, HET, HOM_VAR, UNAVAILABLE, MIXED"
    diff_genotype: "<sample:sample> Given samples must have a different genotype"
    filter_het_var_to_hom_var: "<sample:sample> If variants in sample 1 are heterogeneous and alternative alleles are homogeneous in sample 2 variants are filtered"
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
    info_array_must_contain: ":<key>=<value> Info field must be a array and should match the given regex"
    vcf_filter: ""
  }
}