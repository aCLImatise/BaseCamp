version 1.0

task PlotCircosPlot.py {
  input {
    String? summary
    String? region
    Boolean? srn_as
    String? known
    String? refseq_dir
    String? ec_dir
    String? chr_n
    String? print_chr
    Int? min_interactions
    String? ec_chr_list
    String reads_in
  }
  command <<<
    plot_circos_plot.py \
      ~{reads_in} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--sRNAs" false="" srn_as} \
      ~{if defined(known) then ("--known " +  '"' + known + '"') else ""} \
      ~{if defined(refseq_dir) then ("--refseq_dir " +  '"' + refseq_dir + '"') else ""} \
      ~{if defined(ec_dir) then ("--ec_dir " +  '"' + ec_dir + '"') else ""} \
      ~{if defined(chr_n) then ("--chrn " +  '"' + chr_n + '"') else ""} \
      ~{if defined(print_chr) then ("--print_chr " +  '"' + print_chr + '"') else ""} \
      ~{if defined(min_interactions) then ("--min_interactions " +  '"' + min_interactions + '"') else ""} \
      ~{if defined(ec_chr_list) then ("--EC_chrlist " +  '"' + ec_chr_list + '"') else ""}
  >>>
  parameter_meta {
    summary: "Plot only significant interactions that appear in the summary file. (default: None)"
    region: "Split the genome to windows of this size. (default: 200)"
    srn_as: "Color the lines going to or coming from sRNAs in orange. Must be used with ec_dir. (default: False)"
    known: "Use this file to color the known interactions in red. Must give --refseq_dir as well. (default: None)"
    refseq_dir: "RefSeq dir of organism to get the gene description from. Should be given if --known is given. (default: /home/users/assafp/EC/)"
    ec_dir: "EcoCyc data dir, used to map the regions to genes. If not given only the regions will be reported (default: None)"
    chr_n: "Name of chromosome to plot. (default: chr)"
    print_chr: "Name of chromosome in circos. (default: ecmain)"
    min_interactions: "Minimum number of interactions between two regions to plot. (default: 100)"
    ec_chr_list: "A comma separated dictionary of chromosome names from the EcoCyc names to the bam file names. The names in the bam file should be the same as the UCSC genome browser (they will be printed). (default: COLI-K12,chr)"
    reads_in: "An output file of map_chimeric_fragments.py with the chimeric fragments."
  }
}