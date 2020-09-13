version 1.0

task CallConsensuspy {
  input {
    Boolean? force
    File? snp_list_file
    File? exclude_file
    File? output_file_relative
    Int? min_base_qual
    Float? min_cons_freq
    Int? min_cons_dpth
    Int? min_cons_str_ddp_th
    Int? min_cons_st_rd_bias
    File? vcf_filename
    File? vcf_refname
    Boolean? vcf_all_pos
    Boolean? vcf_preserve_ref_case
    Boolean? vcf_failed_snp_gt
    Int? verbose
  }
  command <<<
    call_consensus_py \
      ~{if (force) then "--force" else ""} \
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
      ~{if (vcf_all_pos) then "--vcfAllPos" else ""} \
      ~{if (vcf_preserve_ref_case) then "--vcfPreserveRefCase" else ""} \
      ~{if (vcf_failed_snp_gt) then "--vcfFailedSnpGt" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs. (default: False)"
    snp_list_file: "Relative or absolute path to the SNP list file across\\nall samples. (default: snplist.txt)"
    exclude_file: "VCF file of positions to exclude. (default: None)"
    output_file_relative: "Output file. Relative or absolute path to the\\nconsensus fasta file for this sample. (default:\\nconsensus.fasta)"
    min_base_qual: "Mimimum base quality score to count a read. All other\\nsnp filters take effect after the low-quality reads\\nare discarded. (default: 0)"
    min_cons_freq: "Consensus frequency. Mimimum fraction of high-quality\\nreads supporting the consensus to make a call.\\n(default: 0.6)"
    min_cons_dpth: "Consensus depth. Minimum number of high-quality reads\\nsupporting the consensus to make a call. (default: 1)"
    min_cons_str_ddp_th: "Consensus strand depth. Minimum number of high-quality\\nreads supporting the consensus which must be present\\non both the forward and reverse strands to make a\\ncall. (default: 0)"
    min_cons_st_rd_bias: "Strand bias. Minimum fraction of the high-quality\\nconsensus-supporting reads which must be present on\\nboth the forward and reverse strands to make a call.\\nThe numerator of this fraction is the number of high-\\nquality consensus-supporting reads on one strand. The\\ndenominator is the total number of high-quality\\nconsensus-supporting reads on both strands combined.\\n(default: 0)"
    vcf_filename: "VCF Output file name. If specified, a VCF file with\\nthis file name will be created in the same directory\\nas the consensus fasta file for this sample. (default:\\nNone)"
    vcf_refname: "Name of the reference file. This is only used in the\\ngenerated VCF file header. (default: Unknown\\nreference)"
    vcf_all_pos: "Flag to cause VCF file generation at all positions,\\nnot just the snp positions. This has no effect on the\\nconsensus fasta file, it only affects the VCF file.\\nThis capability is intended primarily as a diagnostic\\ntool and enabling this flag will greatly increase\\nexecution time. (default: False)"
    vcf_preserve_ref_case: "Flag to cause the VCF file generator to emit each\\nreference base in uppercase/lowercase as it appears in\\nthe reference sequence file. If not specified, the\\nreference base is emitted in uppercase. (default:\\nFalse)"
    vcf_failed_snp_gt: "{.,0,1}\\nControls the VCF file GT data element when a snp fails\\nfilters. Possible values: .) The GT element will be a\\ndot, indicating unable to make a call. 0) The GT\\nelement will be 0, indicating the reference base. 1)\\nThe GT element will be the ALT index of the most\\ncommonly occuring base, usually 1. (default: .)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_relative = "${in_output_file_relative}"
    File out_vcf_filename = "${in_vcf_filename}"
  }
}