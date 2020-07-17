version 1.0

task SnpFilter.py {
  input {
    Boolean? force
    String? vcf_name
    String? edge_length
    Boolean? w
    Boolean? m
    String? out_group
    String? mode
    String? verbose
    String sample_dirs_file
    String ref_fast_a_file
  }
  command <<<
    snp_filter.py \
      ~{sample_dirs_file} \
      ~{ref_fast_a_file} \
      ~{true="--force" false="" force} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(edge_length) then ("--edge_length " +  '"' + edge_length + '"') else ""} \
      ~{true="-w" false="" w} \
      ~{true="-m" false="" m} \
      ~{if defined(out_group) then ("--out_group " +  '"' + out_group + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist and are newer than inputs (default: False)"
    vcf_name: "File name of the input VCF files which must exist in each of the sample directories (default: var.flt.vcf)"
    edge_length: "The length of the edge regions in a contig, in which all SNPs will be removed. (default: 500)"
    w: "[WINDOW_SIZE [WINDOW_SIZE ...]], --window_size [WINDOW_SIZE [WINDOW_SIZE ...]] The length of the window in which the number of SNPs should be no more than max_num_snp. (default: [1000])"
    m: "[MAX_NUM_SNPs [MAX_NUM_SNPs ...]], --max_snp [MAX_NUM_SNPs [MAX_NUM_SNPs ...]] The maximum number of SNPs allowed in a window. (default: [3])"
    out_group: "Relative or absolute path to the file indicating outgroup samples, one sample ID per line. (default: None)"
    mode: "Control whether dense snp regions found in any sample are filtered from all of the samples, or each sample independently. (default: all)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of directories -- one per sample"
    ref_fast_a_file: "Relative or absolute path to the reference fasta file"
  }
}