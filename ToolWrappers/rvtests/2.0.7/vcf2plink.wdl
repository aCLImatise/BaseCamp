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
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (plink_chrom) then "--plinkChrom" else ""} \
      ~{if (minh_we) then "--minHWE" else ""}
  >>>
  parameter_meta {
    people_include_id: "[], --peopleIncludeFile []"
    people_exclude_id: "[], --peopleExcludeFile []"
    plink_chrom: "[], --maxMAF []"
    minh_we: "[], --minCallRate []"
  }
  output {
    File out_stdout = stdout()
  }
}