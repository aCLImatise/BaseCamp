class: CommandLineTool
id: biopet_vcffilter.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: input_vcf
  doc: Input vcf file
  type: File
  inputBinding:
    prefix: --inputVcf
- id: output_vcf
  doc: Output vcf file
  type: File
  inputBinding:
    prefix: --outputVcf
- id: inverted_output_vcf
  doc: inverted output vcf file
  type: File
  inputBinding:
    prefix: --invertedOutputVcf
- id: min_sample_depth
  doc: Min value for DP in genotype fields
  type: long
  inputBinding:
    prefix: --minSampleDepth
- id: min_total_depth
  doc: Min value of DP field in INFO fields
  type: long
  inputBinding:
    prefix: --minTotalDepth
- id: min_alternate_depth
  doc: Min value of AD field in genotype fields
  type: long
  inputBinding:
    prefix: --minAlternateDepth
- id: min_samples_pass
  doc: Min number off samples to pass --minAlternateDepth, --minBamAlternateDepth
    and --minSampleDepth
  type: long
  inputBinding:
    prefix: --minSamplesPass
- id: rest_odom
  doc: <child:father:mother> Only shows variants where child is homozygous and both
    parants hetrozygous
  type: boolean
  inputBinding:
    prefix: --resToDom
- id: trio_compound
  doc: <child:father:mother> Only shows variants where child is a compound variant
    combined from both parants
  type: boolean
  inputBinding:
    prefix: --trioCompound
- id: de_novo_in_sample
  doc: Only show variants that contain unique alleles in complete set for given sample
  type: string
  inputBinding:
    prefix: --deNovoInSample
- id: de_novo_trio
  doc: <child:father:mother> Only show variants that are denovo in the trio
  type: boolean
  inputBinding:
    prefix: --deNovoTrio
- id: trio_loss_of_het
  doc: <child:father:mother> Only show variants where a loss of hetrozygosity is detected
  type: boolean
  inputBinding:
    prefix: --trioLossOfHet
- id: must_have_variant
  doc: Given sample must have 1 alternative allele
  type: string
  inputBinding:
    prefix: --mustHaveVariant
- id: must_not_have_variant
  doc: Given sample may not have alternative alleles
  type: string
  inputBinding:
    prefix: --mustNotHaveVariant
- id: called_in
  doc: Must be called in this sample
  type: string
  inputBinding:
    prefix: --calledIn
- id: must_have_genotype
  doc: <sample:genotype> Must have genotoype <genotype> for this sample. Genotype
    can be NO_CALL, HOM_REF, HET, HOM_VAR, UNAVAILABLE, MIXED
  type: boolean
  inputBinding:
    prefix: --mustHaveGenotype
- id: diff_genotype
  doc: <sample:sample> Given samples must have a different genotype
  type: boolean
  inputBinding:
    prefix: --diffGenotype
- id: filter_het_var_to_hom_var
  doc: <sample:sample> If variants in sample 1 are heterogeneous and alternative alleles
    are homogeneous in sample 2 variants are filtered
  type: boolean
  inputBinding:
    prefix: --filterHetVarToHomVar
- id: filter_ref_calls
  doc: Filter when there are only ref calls
  type: boolean
  inputBinding:
    prefix: --filterRefCalls
- id: filter_no_calls
  doc: Filter when there are only no calls
  type: boolean
  inputBinding:
    prefix: --filterNoCalls
- id: unique_only
  doc: Filter when there more then 1 sample have this variant
  type: boolean
  inputBinding:
    prefix: --uniqueOnly
- id: shared_only
  doc: Filter when not all samples have this variant
  type: boolean
  inputBinding:
    prefix: --sharedOnly
- id: min_called
  doc: Number of sample where a call must be made
  type: string
  inputBinding:
    prefix: --minCalled
- id: min_qual_score
  doc: Min qual score
  type: string
  inputBinding:
    prefix: --minQualScore
- id: id
  doc: Id that may pass the filter
  type: string
  inputBinding:
    prefix: --id
- id: id_file
  doc: File that contain list of IDs to get from vcf file
  type: string
  inputBinding:
    prefix: --idFile
- id: min_genome_quality
  doc: The minimum value in the Genome Quality field.
  type: string
  inputBinding:
    prefix: --minGenomeQuality
- id: advanced_groups
  doc: All members of groups sprated with a ','
  type: string
  inputBinding:
    prefix: --advancedGroups
- id: min_avg_variant_gq
  doc: Filter on the average GQ of variants
  type: string
  inputBinding:
    prefix: --minAvgVariantGQ
- id: info_array_must_contain
  doc: :<key>=<value> Info field must be a array and should match the given regex
  type: boolean
  inputBinding:
    prefix: --infoArrayMustContain
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-vcffilter
