version 1.0

task SmudgeplotPlotR {
  input {
    Boolean? homozygous
    File? name_input_tsv
    String? name_pattern_used
    String? title
    String? quantile_filt
    String? n_cov
    Int? low_cut_off
    Int? nbins
    Int? km_er_size
  }
  command <<<
    smudgeplot_plot_R \
      ~{if (homozygous) then "--homozygous" else ""} \
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
    homozygous: "Assume no heterozygosity in the genome - plotting a\\nparalog structure; [default FALSE]"
    name_input_tsv: "name of the input tsv file with covarages [default\\n\\\"coverages_2.tsv\\\"]"
    name_pattern_used: "name pattern used for the output files\\n(OUTPUT_smudgeplot.png, OUTPUT_summary.txt,\\nOUTPUT_warrnings.txt) [default \\\"smudgeplot\\\"]"
    title: "name printed at the top of the smudgeplot [default\\nnone]"
    quantile_filt: "Remove kmer pairs with coverage over the specified\\nquantile; [default none]"
    n_cov: "the haploid coverage of the sequencing data [default\\ninference from data]"
    low_cut_off: "the lower boundary used when dumping kmers [default\\nmin(total_pair_cov) / 2]"
    nbins: "the number of nbins used for smudgeplot matrix (nbins\\nx nbins) [default autodetection]"
    km_er_size: "The kmer size used to calculate kmer spectra [default\\n21]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}