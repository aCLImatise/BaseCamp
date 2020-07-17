version 1.0

task Mutplot {
  input {
    Boolean? _vcf_vcf
    Boolean? _output_directory
    Boolean? _nbulk_number
    Boolean? _window_size
    Boolean? _step_size
    Boolean? _maxdepth_maximum
    Boolean? _mindepth_minimum
    Boolean? _nrep_number
    Boolean? _minsnpindex_cutoff
    Boolean? _strandbias_filter
    Boolean? _snpeff_predict
    Boolean? igv
    Boolean? species
    Boolean? in_del
    Boolean? fig_width
    Boolean? fig_height
    Boolean? white_space
  }
  command <<<
    mutplot \
      ~{true="-v" false="" _vcf_vcf} \
      ~{true="-o" false="" _output_directory} \
      ~{true="-n" false="" _nbulk_number} \
      ~{true="-w" false="" _window_size} \
      ~{true="-s" false="" _step_size} \
      ~{true="-D" false="" _maxdepth_maximum} \
      ~{true="-d" false="" _mindepth_minimum} \
      ~{true="-N" false="" _nrep_number} \
      ~{true="-m" false="" _minsnpindex_cutoff} \
      ~{true="-S" false="" _strandbias_filter} \
      ~{true="-e" false="" _snpeff_predict} \
      ~{true="--igv" false="" igv} \
      ~{true="--species" false="" species} \
      ~{true="--indel" false="" in_del} \
      ~{true="--fig-width" false="" fig_width} \
      ~{true="--fig-height" false="" fig_height} \
      ~{true="--white-space" false="" white_space}
  >>>
  parameter_meta {
    _vcf_vcf: ", --vcf            VCF file which contains cultivar and mutant bulk. in this order. This VCF file must have AD field."
    _output_directory: ", --out            Output directory. Specified name can exist."
    _nbulk_number: ", --N-bulk         Number of individuals in mutant bulk."
    _window_size: ", --window         Window size (kb). [2000]"
    _step_size: ", --step           Step size (kb). [100]"
    _maxdepth_maximum: ", --max-depth      Maximum depth of variants which will be used. This cutoff will be applied in both of cultivar and bulk. [250]"
    _mindepth_minimum: ", --min-depth      Minimum depth of variants which will be used. This cutoff will be applied in both of cultivar and bulk. [8]"
    _nrep_number: ", --N-rep          Number of replicates for simulation to make  null distribution. [5000]"
    _minsnpindex_cutoff: ", --min-SNPindex   Cutoff of minimum SNP-index for clear results. [0.3]"
    _strandbias_filter: ", --strand-bias    Filter spurious homo genotypes in cultivar using strand bias. If ADF (or ADR) is higher than this cutoff when ADR (or ADF) is 0, that SNP will be filtered out. If you want to supress this filtering, please set this cutoff to 0. [7]"
    _snpeff_predict: ", --snpEff         Predict causal variant using SnpEff. Please check available databases in SnpEff."
    igv: "Output IGV format file to check results on IGV."
    species: "Consider multiple test correction derived by Huang et al. (2019). Please spesify a species name. With this option. QTL-seq produces a theoretical threshold. Currently, Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast are supported."
    in_del: "Plot SNP-index with INDEL."
    fig_width: "Width allocated in chromosome figure. [7.5]"
    fig_height: "Height allocated in chromosome figure. [4.0]"
    white_space: "White space between figures. (This option only affect vertical direction.) [0.6]"
  }
}