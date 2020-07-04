version 1.0

task CallConsensus.py {
  input {
    Boolean? force
    File? snp_list_file
    File? exclude_file
    File? output_file_relative
    Int? min_base_qual
    String? min_cons_freq
    Int? min_cons_dpth
    Int? min_cons_str_ddp_th
    String? min_cons_st_rd_bias
    String? vcf_filename
    String? vcf_refname
    Boolean? vcf_all_pos
    Boolean? vcf_preserve_ref_case
    Boolean? vcf_failed_snp_gt
    String? verbose
    String all_pile_up_file
  }
  command <<<
    call_consensus.py \
      ~{all_pile_up_file} \
      ~{true="--force" false="" force} \
      ~{if defined(snp_list_file) then ("--snpListFile " +  '"' + snp_list_file + '"') else ""} \
      ~{if defined(exclude_file) then ("--excludeFile " +  '"' + exclude_file + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(min_base_qual) then ("--minBaseQual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(min_cons_freq) then ("--minConsFreq " +  '"' + min_cons_freq + '"') else ""} \
      ~{if defined(min_cons_dpth) then ("--minConsDpth " +  '"' + min_cons_dpth + '"') else ""} \
      ~{if defined(min_cons_str_ddp_th) then ("--minConsStrdDpth " +  '"' + min_cons_str_ddp_th + '"') else ""} \
      ~{if defined(min_cons_st_rd_bias) then ("--minConsStrdBias " +  '"' + min_cons_st_rd_bias + '"') else ""} \
      ~{if defined(vcf_filename) then ("--vcfFileName " +  '"' + vcf_filename + '"') else ""} \
      ~{if defined(vcf_refname) then ("--vcfRefName " +  '"' + vcf_refname + '"') else ""} \
      ~{true="--vcfAllPos" false="" vcf_all_pos} \
      ~{true="--vcfPreserveRefCase" false="" vcf_preserve_ref_case} \
      ~{true="--vcfFailedSnpGt" false="" vcf_failed_snp_gt} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists and is newer than inputs. (default: False)"
    snp_list_file: "Relative or absolute path to the SNP list file across all samples. (default: snplist.txt)"
    exclude_file: "VCF file of positions to exclude. (default: None)"
    output_file_relative: "Output file. Relative or absolute path to the consensus fasta file for this sample. (default: consensus.fasta)"
    min_base_qual: "Mimimum base quality score to count a read. All other snp filters take effect after the low-quality reads are discarded. (default: 0)"
    min_cons_freq: "Consensus frequency. Mimimum fraction of high-quality reads supporting the consensus to make a call. (default: 0.6)"
    min_cons_dpth: "Consensus depth. Minimum number of high-quality reads supporting the consensus to make a call. (default: 1)"
    min_cons_str_ddp_th: "Consensus strand depth. Minimum number of high-quality reads supporting the consensus which must be present on both the forward and reverse strands to make a call. (default: 0)"
    min_cons_st_rd_bias: "Strand bias. Minimum fraction of the high-quality consensus-supporting reads which must be present on both the forward and reverse strands to make a call. The numerator of this fraction is the number of high- quality consensus-supporting reads on one strand. The denominator is the total number of high-quality consensus-supporting reads on both strands combined. (default: 0)"
    vcf_filename: "VCF Output file name. If specified, a VCF file with this file name will be created in the same directory as the consensus fasta file for this sample. (default: None)"
    vcf_refname: "Name of the reference file. This is only used in the generated VCF file header. (default: Unknown reference)"
    vcf_all_pos: "Flag to cause VCF file generation at all positions, not just the snp positions. This has no effect on the consensus fasta file, it only affects the VCF file. This capability is intended primarily as a diagnostic tool and enabling this flag will greatly increase execution time. (default: False)"
    vcf_preserve_ref_case: "Flag to cause the VCF file generator to emit each reference base in uppercase/lowercase as it appears in the reference sequence file. If not specified, the reference base is emitted in uppercase. (default: False)"
    vcf_failed_snp_gt: "{.,0,1} Controls the VCF file GT data element when a snp fails filters. Possible values: .) The GT element will be a dot, indicating unable to make a call. 0) The GT element will be 0, indicating the reference base. 1) The GT element will be the ALT index of the most commonly occuring base, usually 1. (default: .)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    all_pile_up_file: "Relative or absolute path to the genome-wide pileup file for this sample."
  }
}