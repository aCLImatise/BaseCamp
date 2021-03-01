version 1.0

task PlotCircosPlotpy {
  input {
    File? summary
    Int? region
    Boolean? srn_as
    File? known
    String? refseq_dir
    String? ec_dir
    String? chr_n
    String? print_chr
    Int? min_interactions
    File? ec_chr_list
  }
  command <<<
    plot_circos_plot_py \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (srn_as) then "--sRNAs" else ""} \
      ~{if defined(known) then ("--known " +  '"' + known + '"') else ""} \
      ~{if defined(refseq_dir) then ("--refseq_dir " +  '"' + refseq_dir + '"') else ""} \
      ~{if defined(ec_dir) then ("--ec_dir " +  '"' + ec_dir + '"') else ""} \
      ~{if defined(chr_n) then ("--chrn " +  '"' + chr_n + '"') else ""} \
      ~{if defined(print_chr) then ("--print_chr " +  '"' + print_chr + '"') else ""} \
      ~{if defined(min_interactions) then ("--min_interactions " +  '"' + min_interactions + '"') else ""} \
      ~{if defined(ec_chr_list) then ("--EC_chrlist " +  '"' + ec_chr_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    summary: "Plot only significant interactions that appear in the\\nsummary file. (default: None)"
    region: "Split the genome to windows of this size. (default:\\n200)"
    srn_as: "Color the lines going to or coming from sRNAs in\\norange. Must be used with ec_dir. (default: False)"
    known: "Use this file to color the known interactions in red.\\nMust give --refseq_dir as well. (default: None)"
    refseq_dir: "RefSeq dir of organism to get the gene description\\nfrom. Should be given if --known is given. (default:\\n/home/users/assafp/EC/)"
    ec_dir: "EcoCyc data dir, used to map the regions to genes. If\\nnot given only the regions will be reported (default:\\nNone)"
    chr_n: "Name of chromosome to plot. (default: chr)"
    print_chr: "Name of chromosome in circos. (default: ecmain)"
    min_interactions: "Minimum number of interactions between two regions to\\nplot. (default: 100)"
    ec_chr_list: "A comma separated dictionary of chromosome names from\\nthe EcoCyc names to the bam file names. The names in\\nthe bam file should be the same as the UCSC genome\\nbrowser (they will be printed). (default:\\nCOLI-K12,chr)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}