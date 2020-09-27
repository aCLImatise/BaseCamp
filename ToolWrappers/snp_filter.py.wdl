version 1.0

task SnpFilterpy {
  input {
    Boolean? force
    File? vcf_name
    Int? edge_length
    Boolean? length_window_number
    Boolean? maximum_number_snps
    File? out_group
    String? mode
    Int? verbose
    String sample_dirs_file
    String ref_fast_a_file
  }
  command <<<
    snp_filter_py \
      ~{sample_dirs_file} \
      ~{ref_fast_a_file} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(edge_length) then ("--edge_length " +  '"' + edge_length + '"') else ""} \
      ~{if (length_window_number) then "-w" else ""} \
      ~{if (maximum_number_snps) then "-m" else ""} \
      ~{if defined(out_group) then ("--out_group " +  '"' + out_group + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    vcf_name: "File name of the input VCF files which must exist in\\neach of the sample directories (default: var.flt.vcf)"
    edge_length: "The length of the edge regions in a contig, in which\\nall SNPs will be removed. (default: 500)"
    length_window_number: "[WINDOW_SIZE [WINDOW_SIZE ...]], --window_size [WINDOW_SIZE [WINDOW_SIZE ...]]\\nThe length of the window in which the number of SNPs\\nshould be no more than max_num_snp. (default: [1000])"
    maximum_number_snps: "[MAX_NUM_SNPs [MAX_NUM_SNPs ...]], --max_snp [MAX_NUM_SNPs [MAX_NUM_SNPs ...]]\\nThe maximum number of SNPs allowed in a window.\\n(default: [3])"
    out_group: "Relative or absolute path to the file indicating\\noutgroup samples, one sample ID per line. (default:\\nNone)"
    mode: "Control whether dense snp regions found in any sample\\nare filtered from all of the samples, or each sample\\nindependently. (default: all)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of\\ndirectories -- one per sample"
    ref_fast_a_file: "Relative or absolute path to the reference fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}