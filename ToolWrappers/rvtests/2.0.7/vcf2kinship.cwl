class: CommandLineTool
id: vcf2kinship.cwl
inputs:
- id: in_in_vcf
  doc: ': Input VCF File'
  type: boolean?
  inputBinding:
    prefix: --inVcf
- id: in_out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_x_hemi
  doc: ': Calculate kinship using non-PAR region X chromosome'
  type: boolean?
  inputBinding:
    prefix: --xHemi
- id: in_x_region
  doc: ": Specify PAR region (default: hg19), can be build number\ne.g. hg38, b37;\
    \ or specify region, e.g.\n'60001-2699520,154931044-155260560'"
  type: boolean?
  inputBinding:
    prefix: --xRegion
- id: in_ped
  doc: ": Use pedigree method or specify ped file for X\nchromosome analysis."
  type: boolean?
  inputBinding:
    prefix: --ped
- id: in_ibs
  doc: ': Use IBS method.'
  type: boolean?
  inputBinding:
    prefix: --ibs
- id: in_bn
  doc: ': Use Balding-Nicols method.'
  type: boolean?
  inputBinding:
    prefix: --bn
- id: in_pc_a
  doc: ': Decomoposite calculated kinship matrix.'
  type: boolean?
  inputBinding:
    prefix: --pca
- id: in_store_genotype
  doc: ': Store genotye matrix (sample by genotype).'
  type: boolean?
  inputBinding:
    prefix: --storeGenotype
- id: in_dosage
  doc: ": Specify which dosage tag to use (e.g. EC/DS). Typical\ndosage are between\
    \ 0.0 and 2.0."
  type: boolean?
  inputBinding:
    prefix: --dosage
- id: in_people_include_id
  doc: ': List IDs of people that will be included in study'
  type: boolean?
  inputBinding:
    prefix: --peopleIncludeID
- id: in_people_include_file
  doc: ": From given file, set IDs of people that will be\nincluded in study"
  type: boolean?
  inputBinding:
    prefix: --peopleIncludeFile
- id: in_people_exclude_id
  doc: ': List IDs of people that will be included in study'
  type: boolean?
  inputBinding:
    prefix: --peopleExcludeID
- id: in_people_exclude_file
  doc: ": From given file, set IDs of people that will be\nincluded in study"
  type: boolean?
  inputBinding:
    prefix: --peopleExcludeFile
- id: in_range_list
  doc: ': Specify some ranges to use, please use chr:begin-end'
  type: boolean?
  inputBinding:
    prefix: --rangeList
- id: in_min_maf
  doc: ": Specify the minimum MAF threshold to be included in\ncalculating kinship."
  type: boolean?
  inputBinding:
    prefix: --minMAF
- id: in_max_miss
  doc: ": Specify the maximum allows missing rate to be inclued\nin calculating kinship."
  type: boolean?
  inputBinding:
    prefix: --maxMiss
- id: in_mins_it_equal
  doc: ': Specify minimum site qual'
  type: boolean?
  inputBinding:
    prefix: --minSiteQual
- id: in_an_no
  doc: ": Specify the annotation type to be included in\ncalculating kinship."
  type: boolean?
  inputBinding:
    prefix: --anno
- id: in_ming_q
  doc: ": Specify the minimum genotype quality, otherwise marked\nas missing genotype"
  type: boolean?
  inputBinding:
    prefix: --minGQ
- id: in_ming_d
  doc: ": Specify the minimum genotype depth, otherwise marked as\nmissing genotype"
  type: boolean?
  inputBinding:
    prefix: --minGD
- id: in_update_id
  doc: ": Update VCF sample id using given file (column 1 and 2\nare old and new id)."
  type: boolean?
  inputBinding:
    prefix: --update-id
- id: in_thread
  doc: ': Specify number of parallel threads to speed up'
  type: boolean?
  inputBinding:
    prefix: --thread
- id: in_markers_dot
  doc: '--xLabel: Specify X chromosome label (default: 23,X'
  type: string
  inputBinding:
    position: 0
- id: in_format_dot
  doc: '--rangeFile: Specify the file containing ranges, please use'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2kinship
