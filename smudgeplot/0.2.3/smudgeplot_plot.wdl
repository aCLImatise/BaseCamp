version 1.0

task SmudgeplotPlot.R {
  input {
    Boolean? homozygous
    String? name_input_tsv
    String? name_pattern_used
    String? title
    String? quantile_filt
    String? n_cov
    String? low_cut_off
    String? nbins
    String? km_er_size
  }
  command <<<
    smudgeplot_plot.R \
      ~{true="--homozygous" false="" homozygous} \
      ~{if defined(name_input_tsv) then ("--input " +  '"' + name_input_tsv + '"') else ""} \
      ~{if defined(name_pattern_used) then ("--output " +  '"' + name_pattern_used + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(quantile_filt) then ("--quantile_filt " +  '"' + quantile_filt + '"') else ""} \
      ~{if defined(n_cov) then ("--n_cov " +  '"' + n_cov + '"') else ""} \
      ~{if defined(low_cut_off) then ("--low_cutoff " +  '"' + low_cut_off + '"') else ""} \
      ~{if defined(nbins) then ("-nbins " +  '"' + nbins + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""}
  >>>
  parameter_meta {
    homozygous: "Assume no heterozygosity in the genome - plotting a paralog structure; [default FALSE]"
    name_input_tsv: "name of the input tsv file with covarages [default \"coverages_2.tsv\"]"
    name_pattern_used: "name pattern used for the output files (OUTPUT_smudgeplot.png, OUTPUT_summary.txt, OUTPUT_warrnings.txt) [default \"smudgeplot\"]"
    title: "name printed at the top of the smudgeplot [default none]"
    quantile_filt: "Remove kmer pairs with coverage over the specified quantile; [default none]"
    n_cov: "the haploid coverage of the sequencing data [default inference from data]"
    low_cut_off: "the lower boundary used when dumping kmers [default min(total_pair_cov) / 2]"
    nbins: "the number of nbins used for smudgeplot matrix (nbins x nbins) [default autodetection]"
    km_er_size: "The kmer size used to calculate kmer spectra [default 21]"
  }
}