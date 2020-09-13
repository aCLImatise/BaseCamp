version 1.0

task Mutmap {
  input {
    Int? var_0
    Boolean? _ref_reference
    Boolean? _cultivar_fastq
    Boolean? _bulk_fastq
    Boolean? _window_kb
    Boolean? _step_kb
    Boolean? _maxdepth_maximum
    Boolean? _mindepth_minimum
    Boolean? _nrep_number
    Boolean? trim
    Boolean? _adapter_fasta
    Boolean? trim_params
    Boolean? _snpeff_predict
    Boolean? mem
    Boolean? _minmq_minimum
    Boolean? _minbq_minimum
    Boolean? _adjustmq_mpileup
    Boolean? species
    String exist_dot
  }
  command <<<
    mutmap \
      ~{exist_dot} \
      ~{if defined(var_0) then ("-n " +  '"' + var_0 + '"') else ""} \
      ~{if (_ref_reference) then "-r" else ""} \
      ~{if (_cultivar_fastq) then "-c" else ""} \
      ~{if (_bulk_fastq) then "-b" else ""} \
      ~{if (_window_kb) then "-w" else ""} \
      ~{if (_step_kb) then "-s" else ""} \
      ~{if (_maxdepth_maximum) then "-D" else ""} \
      ~{if (_mindepth_minimum) then "-d" else ""} \
      ~{if (_nrep_number) then "-N" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (_adapter_fasta) then "-a" else ""} \
      ~{if (trim_params) then "--trim-params" else ""} \
      ~{if (_snpeff_predict) then "-e" else ""} \
      ~{if (mem) then "--mem" else ""} \
      ~{if (_minmq_minimum) then "-q" else ""} \
      ~{if (_minbq_minimum) then "-Q" else ""} \
      ~{if (_adjustmq_mpileup) then "-C" else ""} \
      ~{if (species) then "--species" else ""}
  >>>
  parameter_meta {
    var_0: "[-T] [-e <DATABASE>]"
    _ref_reference: ", --ref         Reference fasta."
    _cultivar_fastq: ", --cultivar    fastq or bam of cultivar. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -c fastq1,fastq2. You can use this\\noptiion multiple times"
    _bulk_fastq: ", --bulk        fastq or bam of mutnat bulk. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -b fastq1,fastq2. You can use this\\noptiion multiple times"
    _window_kb: ", --window      Window size (kb). [2000]"
    _step_kb: ", --step        Step size (kb). [100]"
    _maxdepth_maximum: ", --max-depth   Maximum depth of variants which will be used.\\nThis cutoff will be applied in both of cultivar\\nand bulk. [250]"
    _mindepth_minimum: ", --min-depth   Minimum depth of variants which will be used.\\nThis cutoff will be applied in both of cultivar\\nand bulk. [8]"
    _nrep_number: ", --N-rep       Number of replicates for simulation to make\\nnull distribution. [5000]"
    trim: "Trim fastq using trimmomatic."
    _adapter_fasta: ", --adapter     FASTA of adapter sequences. This will be used\\nwhen you specify \\\"-T\\\" for trimming."
    trim_params: "Parameters for trimmomatic. Input parameters\\nmust be separated by comma with following\\norder: phred, ILLUMINACLIP, LEADING, TRAILING,\\nSLIDINGWINDOW, MINLEN. If you want to remove\\nadapters of illumina, please specify FASTA of\\nthe adapter sequences with \\\"--adapter\\\". Specified\\nname will be inserted into <ADAPTER_FASTA>. If you\\ndon't specify it, adapter trimming will be skipped.\\n[33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
    _snpeff_predict: ", --snpEff      Predict causal variant using SnpEff. Please\\ncheck available databases in SnpEff."
    mem: "Maximum memory per thread when bam sorted;\\nsuffix K/M/G recognized. [1G]"
    _minmq_minimum: ", --min-MQ      Minimum mapping quality in mpileup. [40]"
    _minbq_minimum: ", --min-BQ      Minimum base quality in mpileup. [18]"
    _adjustmq_mpileup: ", --adjust-MQ   \\\"adjust-MQ\\\" in mpileup. Default parameter\\nis suited for BWA. [50]"
    species: "Consider multiple test correction derived by\\nHuang et al. (2019). Please spesify a species name.\\nWith this option. QTL-seq produces a theoretical threshold.\\nCurrently, Arabidopsis, Cucumber, Maize, Rapeseed,\\nRice, Tobacco, Tomato, Wheat, and Yeast are supported."
    exist_dot: "-t , --threads     Number of threads. If you specify the number"
  }
  output {
    File out_stdout = stdout()
  }
}