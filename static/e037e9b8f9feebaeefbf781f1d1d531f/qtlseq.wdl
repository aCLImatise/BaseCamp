version 1.0

task Qtlseq {
  input {
    Boolean? _ref_reference
    Boolean? _parent_fastq
    Boolean? bone
    Boolean? b_two
    Boolean? var_none
    Boolean? n_two
    Boolean? _output_directory
    Boolean? _filial_filial
    Boolean? _threads_number
    Boolean? _window_size
    Boolean? _step_size
    Boolean? _maxdepth_maximum
    Boolean? _mindepth_minimum
    Boolean? _nrep_number
    Boolean? trim
    Boolean? _adapter_fasta
    Boolean? trim_params
    Boolean? _predict_variant
    Boolean? mem
    Boolean? _minmq_minimum
    Boolean? _minimum_base
    Boolean? _adjustmq_mpileup
    Boolean? species
  }
  command <<<
    qtlseq \
      ~{true="-r" false="" _ref_reference} \
      ~{true="-p" false="" _parent_fastq} \
      ~{true="-b1" false="" bone} \
      ~{true="-b2" false="" b_two} \
      ~{true="-n1" false="" var_none} \
      ~{true="-n2" false="" n_two} \
      ~{true="-o" false="" _output_directory} \
      ~{true="-F" false="" _filial_filial} \
      ~{true="-t" false="" _threads_number} \
      ~{true="-w" false="" _window_size} \
      ~{true="-s" false="" _step_size} \
      ~{true="-D" false="" _maxdepth_maximum} \
      ~{true="-d" false="" _mindepth_minimum} \
      ~{true="-N" false="" _nrep_number} \
      ~{true="--trim" false="" trim} \
      ~{true="-a" false="" _adapter_fasta} \
      ~{true="--trim-params" false="" trim_params} \
      ~{true="-e" false="" _predict_variant} \
      ~{true="--mem" false="" mem} \
      ~{true="-q" false="" _minmq_minimum} \
      ~{true="-Q" false="" _minimum_base} \
      ~{true="-C" false="" _adjustmq_mpileup} \
      ~{true="--species" false="" species}
  >>>
  parameter_meta {
    _ref_reference: ", --ref         Reference fasta."
    _parent_fastq: ", --parent      fastq or bam of parent. If you specify fastq, please separate pairs by comma, e.g. -p fastq1,fastq2. You can use this optiion multiple times"
    bone: ", --bulk1      fastq or bam of bulk 1. If you specify fastq, please separate pairs by comma, e.g. -b1 fastq1,fastq2. You can use this optiion multiple times"
    b_two: ", --bulk2      fastq or bam of bulk 2. If you specify fastq, please separate pairs by comma, e.g. -b2 fastq1,fastq2. You can use this optiion multiple times"
    var_none: ", --N-bulk1    Number of individuals in bulk 1."
    n_two: ", --N-bulk2    Number of individuals in bulk 2."
    _output_directory: ", --out         Output directory. Specified name must not exist."
    _filial_filial: ", --filial      Filial generation. This parameter must be more than 1. [2]"
    _threads_number: ", --threads     Number of threads. If you specify the number below one, then QTL-seq will use the threads as many as possible. [2]"
    _window_size: ", --window      Window size (kb). [2000]"
    _step_size: ", --step        Step size (kb). [100]"
    _maxdepth_maximum: ", --max-depth   Maximum depth of variants which will be used. [250]"
    _mindepth_minimum: ", --min-depth   Minimum depth of variants which will be used. [8]"
    _nrep_number: ", --N-rep       Number of replicates for simulation to make  null distribution. [5000]"
    trim: "Trim fastq using trimmomatic."
    _adapter_fasta: ", --adapter     FASTA of adapter sequences. This will be used when you specify \"-T\" for trimming."
    trim_params: "Parameters for trimmomatic. Input parameters must be separated by comma with following order: phred, ILLUMINACLIP, LEADING, TRAILING, SLIDINGWINDOW, MINLEN. If you want to remove adapters of illumina, please specify FASTA of the adapter sequences with \"--adapter\". Specified name will be inserted into <ADAPTER_FASTA>. If you don't specify it, adapter trimming will be skipped. [33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
    _predict_variant: ", --snpEff      Predict causal variant using SnpEff. Please check available databases in SnpEff."
    mem: "Maximum memory per thread when bam sorted; suffix K/M/G recognized. [1G]"
    _minmq_minimum: ", --min-MQ      Minimum mapping quality in mpileup. [40]"
    _minimum_base: ", --min-BQ      Minimum base quality in mpileup. [18]"
    _adjustmq_mpileup: ", --adjust-MQ   \"adjust-MQ\" in mpileup. Default parameter is suited for BWA. [50]"
    species: "Consider multiple test correction derived by Huang et al. (2019). Please spesify a species name. With this option. QTL-seq produces a theoretical threshold. Currently, Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast are supported."
  }
}