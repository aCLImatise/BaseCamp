version 1.0

task Qtlseq {
  input {
    Boolean? _ref_reference
    Boolean? _parent_fastq
    Boolean? bone
    Boolean? b_two
    Boolean? var_none
    Boolean? n_two
    Directory? _output_directory
    Boolean? _threads_number
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
    qtlseq \
      ~{exist_dot} \
      ~{if (_ref_reference) then "-r" else ""} \
      ~{if (_parent_fastq) then "-p" else ""} \
      ~{if (bone) then "-b1" else ""} \
      ~{if (b_two) then "-b2" else ""} \
      ~{if (var_none) then "-n1" else ""} \
      ~{if (n_two) then "-n2" else ""} \
      ~{if (_output_directory) then "-o" else ""} \
      ~{if (_threads_number) then "-t" else ""} \
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
    _ref_reference: ", --ref         Reference fasta."
    _parent_fastq: ", --parent      fastq or bam of parent. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -p fastq1,fastq2. You can use this\\noptiion multiple times"
    bone: ", --bulk1      fastq or bam of bulk 1. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -b1 fastq1,fastq2. You can use this\\noptiion multiple times"
    b_two: ", --bulk2      fastq or bam of bulk 2. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -b2 fastq1,fastq2. You can use this\\noptiion multiple times"
    var_none: ", --N-bulk1    Number of individuals in bulk 1."
    n_two: ", --N-bulk2    Number of individuals in bulk 2."
    _output_directory: ", --out         Output directory. Specified name must not"
    _threads_number: ", --threads     Number of threads. If you specify the number\\nbelow one, then QTL-seq will use the threads\\nas many as possible. [2]"
    _window_kb: ", --window      Window size (kb). [2000]"
    _step_kb: ", --step        Step size (kb). [100]"
    _maxdepth_maximum: ", --max-depth   Maximum depth of variants which will be used. [250]"
    _mindepth_minimum: ", --min-depth   Minimum depth of variants which will be used. [8]"
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
    exist_dot: "-F , --filial      Filial generation. This parameter must be"
  }
  output {
    File out_stdout = stdout()
    Directory out__output_directory = "${in__output_directory}"
  }
}