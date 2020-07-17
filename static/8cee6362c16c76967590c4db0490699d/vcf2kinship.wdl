version 1.0

task Vcf2kinship {
  input {
    Boolean? in_vcf
    Boolean? out
    Boolean? x_hemi
    Boolean? xlabel
    Boolean? x_region
    Boolean? ped
    Boolean? ibs
    Boolean? bn
    Boolean? pc_a
    Boolean? store_genotype
    Boolean? dosage
    Boolean? people_include_id
    Boolean? people_include_file
    Boolean? people_exclude_id
    Boolean? people_exclude_file
    Boolean? range_list
    Boolean? range_file
    Boolean? min_maf
    Boolean? max_miss
    Boolean? mins_it_equal
    Boolean? an_no
    Boolean? ming_q
    Boolean? ming_d
    Boolean? update_id
    Boolean? thread
  }
  command <<<
    vcf2kinship \
      ~{true="--inVcf" false="" in_vcf} \
      ~{true="--out" false="" out} \
      ~{true="--xHemi" false="" x_hemi} \
      ~{true="--xLabel" false="" xlabel} \
      ~{true="--xRegion" false="" x_region} \
      ~{true="--ped" false="" ped} \
      ~{true="--ibs" false="" ibs} \
      ~{true="--bn" false="" bn} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--storeGenotype" false="" store_genotype} \
      ~{true="--dosage" false="" dosage} \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleIncludeFile" false="" people_include_file} \
      ~{true="--peopleExcludeID" false="" people_exclude_id} \
      ~{true="--peopleExcludeFile" false="" people_exclude_file} \
      ~{true="--rangeList" false="" range_list} \
      ~{true="--rangeFile" false="" range_file} \
      ~{true="--minMAF" false="" min_maf} \
      ~{true="--maxMiss" false="" max_miss} \
      ~{true="--minSiteQual" false="" mins_it_equal} \
      ~{true="--anno" false="" an_no} \
      ~{true="--minGQ" false="" ming_q} \
      ~{true="--minGD" false="" ming_d} \
      ~{true="--update-id" false="" update_id} \
      ~{true="--thread" false="" thread}
  >>>
  parameter_meta {
    in_vcf: ": Input VCF File"
    out: ": Output prefix for autosomal kinship calculation"
    x_hemi: ": Calculate kinship using non-PAR region X chromosome markers."
    xlabel: ": Specify X chromosome label (default: 23,X"
    x_region: ": Specify PAR region (default: hg19), can be build number e.g. hg38, b37; or specify region, e.g. '60001-2699520,154931044-155260560'"
    ped: ": Use pedigree method or specify ped file for X chromosome analysis."
    ibs: ": Use IBS method."
    bn: ": Use Balding-Nicols method."
    pc_a: ": Decomoposite calculated kinship matrix."
    store_genotype: ": Store genotye matrix (sample by genotype)."
    dosage: ": Specify which dosage tag to use (e.g. EC/DS). Typical dosage are between 0.0 and 2.0."
    people_include_id: ": List IDs of people that will be included in study"
    people_include_file: ": From given file, set IDs of people that will be included in study"
    people_exclude_id: ": List IDs of people that will be included in study"
    people_exclude_file: ": From given file, set IDs of people that will be included in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end format."
    range_file: ": Specify the file containing ranges, please use chr:begin-end format."
    min_maf: ": Specify the minimum MAF threshold to be included in calculating kinship."
    max_miss: ": Specify the maximum allows missing rate to be inclued in calculating kinship."
    mins_it_equal: ": Specify minimum site qual"
    an_no: ": Specify the annotation type to be included in calculating kinship."
    ming_q: ": Specify the minimum genotype quality, otherwise marked as missing genotype"
    ming_d: ": Specify the minimum genotype depth, otherwise marked as missing genotype"
    update_id: ": Update VCF sample id using given file (column 1 and 2 are old and new id)."
    thread: ": Specify number of parallel threads to speed up"
  }
}