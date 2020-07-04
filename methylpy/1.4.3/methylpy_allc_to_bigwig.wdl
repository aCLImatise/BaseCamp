version 1.0

task MethylpyAllcToBigwig {
  input {
    String? all_c_file
    String? output_file
    String? ref_fast_a
    Array[String] mc_type
    String? bin_size
    Int? min_bin_sites
    Int? min_bin_cov
    Int? min_site_cov
    Int? max_site_cov
    File? path_to_wig_to_bigwig
    File? path_to_sam_tools
    String? remove_chr_prefix
    String? add_chr_prefix
  }
  command <<<
    methylpy allc-to-bigwig \
      ~{if defined(all_c_file) then ("--allc-file " +  '"' + all_c_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(mc_type) then ("--mc-type " +  '"' + mc_type + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(min_bin_sites) then ("--min-bin-sites " +  '"' + min_bin_sites + '"') else ""} \
      ~{if defined(min_bin_cov) then ("--min-bin-cov " +  '"' + min_bin_cov + '"') else ""} \
      ~{if defined(min_site_cov) then ("--min-site-cov " +  '"' + min_site_cov + '"') else ""} \
      ~{if defined(max_site_cov) then ("--max-site-cov " +  '"' + max_site_cov + '"') else ""} \
      ~{if defined(path_to_wig_to_bigwig) then ("--path-to-wigToBigWig " +  '"' + path_to_wig_to_bigwig + '"') else ""} \
      ~{if defined(path_to_sam_tools) then ("--path-to-samtools " +  '"' + path_to_sam_tools + '"') else ""} \
      ~{if defined(remove_chr_prefix) then ("--remove-chr-prefix " +  '"' + remove_chr_prefix + '"') else ""} \
      ~{if defined(add_chr_prefix) then ("--add-chr-prefix " +  '"' + add_chr_prefix + '"') else ""}
  >>>
  parameter_meta {
    all_c_file: "input allc file to be converted to bigwig format (default: None)"
    output_file: "Name of output file (default: None)"
    ref_fast_a: "string indicating the path to a fasta file containing the genome sequences (default: None)"
    mc_type: "List of space separated mc nucleotide contexts for which you want to look for DMRs. These classifications may use the wildcards H (indicating anything but a G) and N (indicating any nucleotide). (default: ['CGN'])"
    bin_size: "Genomic bin size for calculating methylation level (default: 100)"
    min_bin_sites: "Minimum sites in a bin for it to be included. (default: 0)"
    min_bin_cov: "Minimum total coverage of all sites in a bin for methylation level to be calculated. (default: 0)"
    min_site_cov: "Minimum total coverage of a site for it to be included. (default: 0)"
    max_site_cov: "Maximum total coverage of a site for it to be included. (default: None)"
    path_to_wig_to_bigwig: "Path to wigToBigWig executable (default: )"
    path_to_sam_tools: "Path to samtools installation (default: )"
    remove_chr_prefix: "Boolean indicates whether to remove \"chr\" in the chromosome names in genome sequence file to match chromosome names in input allc file. (default: True)"
    add_chr_prefix: "Boolean indicates whether to add \"chr\" in the chromosome names in input allc file to match chromosome names in genome sequence file. This option overrides --remove-chr-prefix. (default: False)"
  }
}