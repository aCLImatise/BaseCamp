version 1.0

task LinkFragmentspy {
  input {
    Boolean? file_unlinked_hapcut
    Boolean? vcf_file_phasing
    Boolean? bam_file_barcoded
    File? output_file_linked
    Boolean? distance_delineates_defaultkb
    Boolean? maximum_base_quality
    Boolean? single_snp_frags
    String? fragments
    String? vcf
    String? bam_file
  }
  command <<<
    LinkFragments_py \
      ~{fragments} \
      ~{vcf} \
      ~{bam_file} \
      ~{if (file_unlinked_hapcut) then "-f" else ""} \
      ~{if (vcf_file_phasing) then "-v" else ""} \
      ~{if (bam_file_barcoded) then "-b" else ""} \
      ~{if (output_file_linked) then "-o" else ""} \
      ~{if (distance_delineates_defaultkb) then "-d" else ""} \
      ~{if (maximum_base_quality) then "-m" else ""} \
      ~{if (single_snp_frags) then "--single_SNP_frags" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_unlinked_hapcut: "[FRAGMENTS], --fragments [FRAGMENTS]\\nfile with unlinked hapcut2 fragments (generate using\\n--10X 1 option in extractHAIRS)"
    vcf_file_phasing: "[VCF], --VCF [VCF]\\nvcf file for phasing"
    bam_file_barcoded: "[BAM_FILE], --bam_file [BAM_FILE]\\nbam file with barcoded reads"
    output_file_linked: "[OUTFILE], --outfile [OUTFILE]\\noutput file with linked fragments"
    distance_delineates_defaultkb: "[DISTANCE], --distance [DISTANCE]\\ndistance in base pairs that delineates separate 10X\\nmolecules, default=20kb"
    maximum_base_quality: "[MAXBQ], --maxbq [MAXBQ]\\nmaximum base quality for an allele call, default=40"
    single_snp_frags: "whether to keep fragments overlapping only one SNP\\n"
    fragments: ""
    vcf: ""
    bam_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_linked = "${in_output_file_linked}"
  }
}