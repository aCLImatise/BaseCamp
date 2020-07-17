version 1.0

task GemBSExtract {
  input {
    String? jobs
    String? sample_name
    String? barcode
    Boolean? strand_specific
    String? phred_threshold
    String? min_inform
    Int? min_nc
    Boolean? allow_het
    String? reference_bias
    Boolean? cpg
    Boolean? non_cpg
    Boolean? bed_methyl
    Boolean? bigwig
    Boolean? snps
    String? snp_list
    String? snp_db
    Boolean? dry_run
    String? json
    Boolean? ignore_db
    Boolean? ignore_dep
  }
  command <<<
    gemBS extract \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{if defined(phred_threshold) then ("--phred-threshold " +  '"' + phred_threshold + '"') else ""} \
      ~{if defined(min_inform) then ("--min-inform " +  '"' + min_inform + '"') else ""} \
      ~{if defined(min_nc) then ("--min-nc " +  '"' + min_nc + '"') else ""} \
      ~{true="--allow-het" false="" allow_het} \
      ~{if defined(reference_bias) then ("--reference-bias " +  '"' + reference_bias + '"') else ""} \
      ~{true="--cpg" false="" cpg} \
      ~{true="--non-cpg" false="" non_cpg} \
      ~{true="--bed-methyl" false="" bed_methyl} \
      ~{true="--bigwig" false="" bigwig} \
      ~{true="--snps" false="" snps} \
      ~{if defined(snp_list) then ("--snp-list " +  '"' + snp_list + '"') else ""} \
      ~{if defined(snp_db) then ("--snp-db " +  '"' + snp_db + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--ignore-db" false="" ignore_db} \
      ~{true="--ignore-dep" false="" ignore_dep}
  >>>
  parameter_meta {
    jobs: "Number of parallel jobs"
    sample_name: "Name of sample to be filtered"
    barcode: "Barcode of sample to be filtered"
    strand_specific: "Output separate lines for each strand."
    phred_threshold: "Min threshold for genotype phred score."
    min_inform: "Min threshold for informative reads."
    min_nc: "Min threshold for non-converted reads for non CpG sites."
    allow_het: "Allow both heterozygous and homozgyous sites."
    reference_bias: "Allow both heterozygous and homozgyous sites."
    cpg: "Output gemBS bed with cpg sites."
    non_cpg: "Output gemBS bed with non-cpg sites."
    bed_methyl: "Output bedMethyl files (bed and bigBed)"
    bigwig: "Output bigWig file"
    snps: "Output SNPs"
    snp_list: "List of SNPs to output"
    snp_db: "dbSNP_idx processed SNP idx"
    dry_run: "Output mapping commands without execution"
    json: "FILE      Output JSON file with details of pending commands"
    ignore_db: "Ignore database for --dry-run and --json commands"
    ignore_dep: "Ignore dependencies for --dry-run and --json commands"
  }
}