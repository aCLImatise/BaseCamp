class: CommandLineTool
id: vcf2kinship.cwl
inputs:
- id: in_vcf
  doc: ': Input VCF File'
  type: boolean
  inputBinding:
    prefix: --inVcf
- id: out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean
  inputBinding:
    prefix: --out
- id: x_hemi
  doc: ': Calculate kinship using non-PAR region X chromosome markers.'
  type: boolean
  inputBinding:
    prefix: --xHemi
- id: xlabel
  doc: ': Specify X chromosome label (default: 23,X'
  type: boolean
  inputBinding:
    prefix: --xLabel
- id: x_region
  doc: ": Specify PAR region (default: hg19), can be build number e.g. hg38, b37;\
    \ or specify region, e.g. '60001-2699520,154931044-155260560'"
  type: boolean
  inputBinding:
    prefix: --xRegion
- id: ped
  doc: ': Use pedigree method or specify ped file for X chromosome analysis.'
  type: boolean
  inputBinding:
    prefix: --ped
- id: ibs
  doc: ': Use IBS method.'
  type: boolean
  inputBinding:
    prefix: --ibs
- id: bn
  doc: ': Use Balding-Nicols method.'
  type: boolean
  inputBinding:
    prefix: --bn
- id: pc_a
  doc: ': Decomoposite calculated kinship matrix.'
  type: boolean
  inputBinding:
    prefix: --pca
- id: store_genotype
  doc: ': Store genotye matrix (sample by genotype).'
  type: boolean
  inputBinding:
    prefix: --storeGenotype
- id: dosage
  doc: ': Specify which dosage tag to use (e.g. EC/DS). Typical dosage are between
    0.0 and 2.0.'
  type: boolean
  inputBinding:
    prefix: --dosage
- id: people_include_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: people_include_file
  doc: ': From given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeFile
- id: people_exclude_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: people_exclude_file
  doc: ': From given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeFile
- id: range_list
  doc: ': Specify some ranges to use, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeList
- id: range_file
  doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeFile
- id: min_maf
  doc: ': Specify the minimum MAF threshold to be included in calculating kinship.'
  type: boolean
  inputBinding:
    prefix: --minMAF
- id: max_miss
  doc: ': Specify the maximum allows missing rate to be inclued in calculating kinship.'
  type: boolean
  inputBinding:
    prefix: --maxMiss
- id: mins_it_equal
  doc: ': Specify minimum site qual'
  type: boolean
  inputBinding:
    prefix: --minSiteQual
- id: an_no
  doc: ': Specify the annotation type to be included in calculating kinship.'
  type: boolean
  inputBinding:
    prefix: --anno
- id: ming_q
  doc: ': Specify the minimum genotype quality, otherwise marked as missing genotype'
  type: boolean
  inputBinding:
    prefix: --minGQ
- id: ming_d
  doc: ': Specify the minimum genotype depth, otherwise marked as missing genotype'
  type: boolean
  inputBinding:
    prefix: --minGD
- id: update_id
  doc: ': Update VCF sample id using given file (column 1 and 2 are old and new id).'
  type: boolean
  inputBinding:
    prefix: --update-id
- id: thread
  doc: ': Specify number of parallel threads to speed up'
  type: boolean
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2kinship
