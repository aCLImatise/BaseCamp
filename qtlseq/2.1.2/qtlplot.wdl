version 1.0

task Qtlplot {
  input {
    Boolean? _vcf_vcf
    Boolean? var_none
    Boolean? n_two
    Directory? _output_directory
    Boolean? _filial_filial
    Boolean? _threads_number
    Boolean? _window_kb
    Boolean? _step_kb
    Boolean? _maxdepth_maximum
    Boolean? _mindepth_depth
    Boolean? _nrep_number
    Boolean? _minsnpindex_cutoff
    Boolean? _strandbias_filter
    Boolean? _snpeff_predict
    File? igv
    Boolean? species
    Boolean? in_del
    Boolean? fig_width
    Boolean? fig_height
    Boolean? white_space
  }
  command <<<
    qtlplot \
      ~{if (_vcf_vcf) then "-v" else ""} \
      ~{if (var_none) then "-n1" else ""} \
      ~{if (n_two) then "-n2" else ""} \
      ~{if (_output_directory) then "-o" else ""} \
      ~{if (_filial_filial) then "-F" else ""} \
      ~{if (_threads_number) then "-t" else ""} \
      ~{if (_window_kb) then "-w" else ""} \
      ~{if (_step_kb) then "-s" else ""} \
      ~{if (_maxdepth_maximum) then "-D" else ""} \
      ~{if (_mindepth_depth) then "-d" else ""} \
      ~{if (_nrep_number) then "-N" else ""} \
      ~{if (_minsnpindex_cutoff) then "-m" else ""} \
      ~{if (_strandbias_filter) then "-S" else ""} \
      ~{if (_snpeff_predict) then "-e" else ""} \
      ~{if (igv) then "--igv" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (in_del) then "--indel" else ""} \
      ~{if (fig_width) then "--fig-width" else ""} \
      ~{if (fig_height) then "--fig-height" else ""} \
      ~{if (white_space) then "--white-space" else ""}
  >>>
  parameter_meta {
    _vcf_vcf: ", --vcf            VCF file which contains parent, bulk1, and bulk2\\nin this order. This VCF file must have AD field."
    var_none: ", --N-bulk1       Number of individuals in bulk 1."
    n_two: ", --N-bulk2       Number of individuals in bulk 2."
    _output_directory: ", --out            Output directory. Specified name can exist."
    _filial_filial: ", --filial         Filial generation. This parameter must be\\nmore than 1. [2]"
    _threads_number: ", --threads        Number of threads. If you specify the number\\nbelow one, then QTL-plot will use the threads\\nas many as possible. [2]"
    _window_kb: ", --window         Window size (kb). [2000]"
    _step_kb: ", --step           Step size (kb). [100]"
    _maxdepth_maximum: ", --max-depth      Maximum depth of variants which will be used. [250]"
    _mindepth_depth: ", --min-depth      Minimum depth of variants which will be used. [8]"
    _nrep_number: ", --N-rep          Number of replicates for simulation to make\\nnull distribution. [5000]"
    _minsnpindex_cutoff: ", --min-SNPindex   Cutoff of minimum SNP-index for clear results. [0.3]"
    _strandbias_filter: ", --strand-bias    Filter spurious homo genotypes in cultivar using\\nstrand bias. If ADF (or ADR) is higher than this\\ncutoff when ADR (or ADF) is 0, that SNP will be\\nfiltered out. If you want to supress this filtering,\\nplease set this cutoff to 0. [7]"
    _snpeff_predict: ", --snpEff         Predict causal variant using SnpEff. Please\\ncheck available databases in SnpEff."
    igv: "Output IGV format file to check results on IGV."
    species: "Consider multiple test correction derived by\\nHuang et al. (2019). Please spesify a species name.\\nWith this option. QTL-seq produces a theoretical threshold.\\nCurrently, Arabidopsis, Cucumber, Maize, Rapeseed,\\nRice, Tobacco, Tomato, Wheat, and Yeast are supported."
    in_del: "Plot SNP-index with INDEL."
    fig_width: "Width allocated in chromosome figure. [7.5]"
    fig_height: "Height allocated in chromosome figure. [4.0]"
    white_space: "White space between figures. (This option\\nonly affect vertical direction.) [0.6]"
  }
  output {
    File out_stdout = stdout()
    Directory out__output_directory = "${in__output_directory}"
    File out_igv = "${in_igv}"
  }
}