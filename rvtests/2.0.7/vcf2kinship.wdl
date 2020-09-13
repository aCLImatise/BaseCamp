version 1.0

task Vcf2kinship {
  input {
    Boolean? in_vcf
    Boolean? out
    Boolean? x_hemi
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
    Boolean? min_maf
    Boolean? max_miss
    Boolean? mins_it_equal
    Boolean? an_no
    Boolean? ming_q
    Boolean? ming_d
    Boolean? update_id
    Boolean? thread
    String markers_dot
    String format_dot
  }
  command <<<
    vcf2kinship \
      ~{markers_dot} \
      ~{format_dot} \
      ~{if (in_vcf) then "--inVcf" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (x_hemi) then "--xHemi" else ""} \
      ~{if (x_region) then "--xRegion" else ""} \
      ~{if (ped) then "--ped" else ""} \
      ~{if (ibs) then "--ibs" else ""} \
      ~{if (bn) then "--bn" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (store_genotype) then "--storeGenotype" else ""} \
      ~{if (dosage) then "--dosage" else ""} \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_include_file) then "--peopleIncludeFile" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (people_exclude_file) then "--peopleExcludeFile" else ""} \
      ~{if (range_list) then "--rangeList" else ""} \
      ~{if (min_maf) then "--minMAF" else ""} \
      ~{if (max_miss) then "--maxMiss" else ""} \
      ~{if (mins_it_equal) then "--minSiteQual" else ""} \
      ~{if (an_no) then "--anno" else ""} \
      ~{if (ming_q) then "--minGQ" else ""} \
      ~{if (ming_d) then "--minGD" else ""} \
      ~{if (update_id) then "--update-id" else ""} \
      ~{if (thread) then "--thread" else ""}
  >>>
  parameter_meta {
    in_vcf: ": Input VCF File"
    out: ": Output prefix for autosomal kinship calculation"
    x_hemi: ": Calculate kinship using non-PAR region X chromosome"
    x_region: ": Specify PAR region (default: hg19), can be build number\\ne.g. hg38, b37; or specify region, e.g.\\n'60001-2699520,154931044-155260560'"
    ped: ": Use pedigree method or specify ped file for X\\nchromosome analysis."
    ibs: ": Use IBS method."
    bn: ": Use Balding-Nicols method."
    pc_a: ": Decomoposite calculated kinship matrix."
    store_genotype: ": Store genotye matrix (sample by genotype)."
    dosage: ": Specify which dosage tag to use (e.g. EC/DS). Typical\\ndosage are between 0.0 and 2.0."
    people_include_id: ": List IDs of people that will be included in study"
    people_include_file: ": From given file, set IDs of people that will be\\nincluded in study"
    people_exclude_id: ": List IDs of people that will be included in study"
    people_exclude_file: ": From given file, set IDs of people that will be\\nincluded in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end"
    min_maf: ": Specify the minimum MAF threshold to be included in\\ncalculating kinship."
    max_miss: ": Specify the maximum allows missing rate to be inclued\\nin calculating kinship."
    mins_it_equal: ": Specify minimum site qual"
    an_no: ": Specify the annotation type to be included in\\ncalculating kinship."
    ming_q: ": Specify the minimum genotype quality, otherwise marked\\nas missing genotype"
    ming_d: ": Specify the minimum genotype depth, otherwise marked as\\nmissing genotype"
    update_id: ": Update VCF sample id using given file (column 1 and 2\\nare old and new id)."
    thread: ": Specify number of parallel threads to speed up"
    markers_dot: "--xLabel: Specify X chromosome label (default: 23,X"
    format_dot: "--rangeFile: Specify the file containing ranges, please use"
  }
  output {
    File out_stdout = stdout()
  }
}