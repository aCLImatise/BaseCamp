version 1.0

task LinkFragments.py {
  input {
    Boolean? file_unlinked_hapcut
    Boolean? vcf_file_phasing
    Boolean? bam_file_barcoded
    Boolean? output_file_linked
    Boolean? distance_separate_molecules
    Boolean? single_snp_frags
    String? fragments
    String? vcf
    String? bam_file
  }
  command <<<
    LinkFragments.py \
      ~{fragments} \
      ~{vcf} \
      ~{bam_file} \
      ~{true="-f" false="" file_unlinked_hapcut} \
      ~{true="-v" false="" vcf_file_phasing} \
      ~{true="-b" false="" bam_file_barcoded} \
      ~{true="-o" false="" output_file_linked} \
      ~{true="-d" false="" distance_separate_molecules} \
      ~{true="--single_SNP_frags" false="" single_snp_frags}
  >>>
  parameter_meta {
    file_unlinked_hapcut: "[FRAGMENTS], --fragments [FRAGMENTS] file with unlinked hapcut2 fragments (generate using --10X 1 option in extractHAIRS)"
    vcf_file_phasing: "[VCF], --VCF [VCF] vcf file for phasing"
    bam_file_barcoded: "[BAM_FILE], --bam_file [BAM_FILE] bam file with barcoded reads"
    output_file_linked: "[OUTFILE], --outfile [OUTFILE] output file with linked fragments"
    distance_separate_molecules: "[DISTANCE], --distance [DISTANCE] distance in base pairs that delineates separate 10X molecules"
    single_snp_frags: "whether to keep fragments overlapping only one SNP"
    fragments: ""
    vcf: ""
    bam_file: ""
  }
}