version 1.0

task Mutmap {
  input {
    Boolean? ref
    Boolean? cultivar
    Boolean? bulk
    Boolean? n_bulk
    Directory? out
    Boolean? window
    Boolean? step
    Boolean? max_depth
    Boolean? min_depth
    Boolean? n_rep
    Boolean? trim
    Boolean? adapter
    Boolean? trim_params
    Boolean? snp_eff
    Boolean? mem
    Boolean? min_mq
    Boolean? min_bq
    Boolean? adjust_mq
    Boolean? species
    String exist_dot
  }
  command <<<
    mutmap \
      ~{exist_dot} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (cultivar) then "--cultivar" else ""} \
      ~{if (bulk) then "--bulk" else ""} \
      ~{if (n_bulk) then "--N-bulk" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (max_depth) then "--max-depth" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (n_rep) then "--N-rep" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (adapter) then "--adapter" else ""} \
      ~{if (trim_params) then "--trim-params" else ""} \
      ~{if (snp_eff) then "--snpEff" else ""} \
      ~{if (mem) then "--mem" else ""} \
      ~{if (min_mq) then "--min-MQ" else ""} \
      ~{if (min_bq) then "--min-BQ" else ""} \
      ~{if (adjust_mq) then "--adjust-MQ" else ""} \
      ~{if (species) then "--species" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Reference fasta."
    cultivar: "fastq or bam of cultivar. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -c fastq1,fastq2. You can use this\\noptiion multiple times"
    bulk: "fastq or bam of mutnat bulk. If you specify\\nfastq, please separate pairs by comma,\\ne.g. -b fastq1,fastq2. You can use this\\noptiion multiple times"
    n_bulk: "Number of individuals in mutant bulk."
    out: "Output directory. Specified name must not"
    window: "Window size (kb). [2000]"
    step: "Step size (kb). [100]"
    max_depth: "Maximum depth of variants which will be used.\\nThis cutoff will be applied in both of cultivar\\nand bulk. [250]"
    min_depth: "Minimum depth of variants which will be used.\\nThis cutoff will be applied in both of cultivar\\nand bulk. [8]"
    n_rep: "Number of replicates for simulation to make\\nnull distribution. [5000]"
    trim: "Trim fastq using trimmomatic."
    adapter: "FASTA of adapter sequences. This will be used\\nwhen you specify \\\"-T\\\" for trimming."
    trim_params: "Parameters for trimmomatic. Input parameters\\nmust be separated by comma with following\\norder: phred, ILLUMINACLIP, LEADING, TRAILING,\\nSLIDINGWINDOW, MINLEN. If you want to remove\\nadapters of illumina, please specify FASTA of\\nthe adapter sequences with \\\"--adapter\\\". Specified\\nname will be inserted into <ADAPTER_FASTA>. If you\\ndon't specify it, adapter trimming will be skipped.\\n[33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
    snp_eff: "Predict causal variant using SnpEff. Please\\ncheck available databases in SnpEff."
    mem: "Maximum memory per thread when bam sorted;\\nsuffix K/M/G recognized. [1G]"
    min_mq: "Minimum mapping quality in mpileup. [40]"
    min_bq: "Minimum base quality in mpileup. [18]"
    adjust_mq: "\\\"adjust-MQ\\\" in mpileup. Default parameter\\nis suited for BWA. [50]"
    species: "Consider multiple test correction derived by\\nHuang et al. (2019). Please spesify a species name.\\nWith this option. QTL-seq produces a theoretical threshold.\\nCurrently, Arabidopsis, Cucumber, Maize, Rapeseed,\\nRice, Tobacco, Tomato, Wheat, and Yeast are supported."
    exist_dot: "-t , --threads     Number of threads. If you specify the number"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}