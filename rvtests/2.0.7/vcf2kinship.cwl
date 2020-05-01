#!/usr/bin/env cwl-runner

baseCommand:
- vcf2kinship
class: CommandLineTool
cwlVersion: v1.0
id: vcf2kinship
inputs:
- doc: ': Input VCF File'
  id: in_vcf
  inputBinding:
    prefix: --inVcf
  type: boolean
- doc: ': Output prefix for autosomal kinship calculation'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: ': Calculate kinship using non-PAR region X chromosome markers.'
  id: x_hemi
  inputBinding:
    prefix: --xHemi
  type: boolean
- doc: ': Specify X chromosome label (default: 23,X'
  id: xlabel
  inputBinding:
    prefix: --xLabel
  type: boolean
- doc: ": Specify PAR region (default: hg19), can be build number e.g. hg38, b37;\
    \ or specify region, e.g. '60001-2699520,154931044-155260560'"
  id: x_region
  inputBinding:
    prefix: --xRegion
  type: boolean
- doc: ': Use pedigree method or specify ped file for X chromosome analysis.'
  id: ped
  inputBinding:
    prefix: --ped
  type: boolean
- doc: ': Use IBS method.'
  id: ibs
  inputBinding:
    prefix: --ibs
  type: boolean
- doc: ': Use Balding-Nicols method.'
  id: bn
  inputBinding:
    prefix: --bn
  type: boolean
- doc: ': Decomoposite calculated kinship matrix.'
  id: pc_a
  inputBinding:
    prefix: --pca
  type: boolean
- doc: ': Store genotye matrix (sample by genotype).'
  id: store_genotype
  inputBinding:
    prefix: --storeGenotype
  type: boolean
- doc: ': Specify which dosage tag to use (e.g. EC/DS). Typical dosage are between
    0.0 and 2.0.'
  id: dosage
  inputBinding:
    prefix: --dosage
  type: boolean
- doc: ': List IDs of people that will be included in study'
  id: people_include_id
  inputBinding:
    prefix: --peopleIncludeID
  type: boolean
- doc: ': From given file, set IDs of people that will be included in study'
  id: people_include_file
  inputBinding:
    prefix: --peopleIncludeFile
  type: boolean
- doc: ': List IDs of people that will be included in study'
  id: people_exclude_id
  inputBinding:
    prefix: --peopleExcludeID
  type: boolean
- doc: ': From given file, set IDs of people that will be included in study'
  id: people_exclude_file
  inputBinding:
    prefix: --peopleExcludeFile
  type: boolean
- doc: ': Specify some ranges to use, please use chr:begin-end format.'
  id: range_list
  inputBinding:
    prefix: --rangeList
  type: boolean
- doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  id: range_file
  inputBinding:
    prefix: --rangeFile
  type: boolean
- doc: ': Specify the minimum MAF threshold to be included in calculating kinship.'
  id: min_maf
  inputBinding:
    prefix: --minMAF
  type: boolean
- doc: ': Specify the maximum allows missing rate to be inclued in calculating kinship.'
  id: max_miss
  inputBinding:
    prefix: --maxMiss
  type: boolean
- doc: ': Specify minimum site qual'
  id: mins_it_equal
  inputBinding:
    prefix: --minSiteQual
  type: boolean
- doc: ': Specify the annotation type to be included in calculating kinship.'
  id: an_no
  inputBinding:
    prefix: --anno
  type: boolean
- doc: ': Specify the minimum genotype quality, otherwise marked as missing genotype'
  id: ming_q
  inputBinding:
    prefix: --minGQ
  type: boolean
- doc: ': Specify the minimum genotype depth, otherwise marked as missing genotype'
  id: ming_d
  inputBinding:
    prefix: --minGD
  type: boolean
- doc: ': Update VCF sample id using given file (column 1 and 2 are old and new id).'
  id: update_id
  inputBinding:
    prefix: --update-id
  type: boolean
- doc: ': Specify number of parallel threads to speed up'
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
