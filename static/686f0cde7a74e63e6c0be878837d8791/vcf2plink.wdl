version 1.0

task Vcf2plink {
  input {
    Boolean? people_include_id
    Boolean? people_exclude_id
    Boolean? plink_chrom
    Boolean? minh_we
  }
  command <<<
    vcf2plink \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleExcludeID" false="" people_exclude_id} \
      ~{true="--plinkChrom" false="" plink_chrom} \
      ~{true="--minHWE" false="" minh_we}
  >>>
  parameter_meta {
    people_include_id: "[], --peopleIncludeFile []"
    people_exclude_id: "[], --peopleExcludeFile []"
    plink_chrom: "[], --maxMAF []"
    minh_we: "[], --minCallRate []"
  }
}