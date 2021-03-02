version 1.0

task Qtlplot {
  input {
    Boolean? vcf
    Boolean? n_bulk_one
    Boolean? n_bulk_two
    Directory? out
    Boolean? filial
    Boolean? threads
    Boolean? window
    Boolean? step
    Boolean? max_depth
    Boolean? min_depth
    Boolean? n_rep
    Boolean? min_snp_index
    Boolean? strand_bias
    Boolean? snp_eff
    File? igv
    Boolean? species
    Boolean? in_del
    Boolean? fig_width
    Boolean? fig_height
    Boolean? white_space
  }
  command <<<
    qtlplot \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (n_bulk_one) then "--N-bulk1" else ""} \
      ~{if (n_bulk_two) then "--N-bulk2" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (filial) then "--filial" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (max_depth) then "--max-depth" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (n_rep) then "--N-rep" else ""} \
      ~{if (min_snp_index) then "--min-SNPindex" else ""} \
      ~{if (strand_bias) then "--strand-bias" else ""} \
      ~{if (snp_eff) then "--snpEff" else ""} \
      ~{if (igv) then "--igv" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (in_del) then "--indel" else ""} \
      ~{if (fig_width) then "--fig-width" else ""} \
      ~{if (fig_height) then "--fig-height" else ""} \
      ~{if (white_space) then "--white-space" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf: "VCF file which contains parent, bulk1, and bulk2\\nin this order. This VCF file must have AD field."
    n_bulk_one: "Number of individuals in bulk 1."
    n_bulk_two: "Number of individuals in bulk 2."
    out: "Output directory. Specified name can exist."
    filial: "Filial generation. This parameter must be\\nmore than 1. [2]"
    threads: "Number of threads. If you specify the number\\nbelow one, then QTL-plot will use the threads\\nas many as possible. [2]"
    window: "Window size (kb). [2000]"
    step: "Step size (kb). [100]"
    max_depth: "Maximum depth of variants which will be used. [250]"
    min_depth: "Minimum depth of variants which will be used. [8]"
    n_rep: "Number of replicates for simulation to make\\nnull distribution. [5000]"
    min_snp_index: "Cutoff of minimum SNP-index for clear results. [0.3]"
    strand_bias: "Filter spurious homo genotypes in cultivar using\\nstrand bias. If ADF (or ADR) is higher than this\\ncutoff when ADR (or ADF) is 0, that SNP will be\\nfiltered out. If you want to supress this filtering,\\nplease set this cutoff to 0. [7]"
    snp_eff: "Predict causal variant using SnpEff. Please\\ncheck available databases in SnpEff."
    igv: "Output IGV format file to check results on IGV."
    species: "Consider multiple test correction derived by\\nHuang et al. (2019). Please spesify a species name.\\nWith this option. QTL-seq produces a theoretical threshold.\\nCurrently, Arabidopsis, Cucumber, Maize, Rapeseed,\\nRice, Tobacco, Tomato, Wheat, and Yeast are supported."
    in_del: "Plot SNP-index with INDEL."
    fig_width: "Width allocated in chromosome figure. [7.5]"
    fig_height: "Height allocated in chromosome figure. [4.0]"
    white_space: "White space between figures. (This option\\nonly affect vertical direction.) [0.6]"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
    File out_igv = "${in_igv}"
  }
}