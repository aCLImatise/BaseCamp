class: CommandLineTool
id: mutmap.cwl
inputs:
- id: in_ref
  doc: Reference fasta.
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_cultivar
  doc: "fastq or bam of cultivar. If you specify\nfastq, please separate pairs by\
    \ comma,\ne.g. -c fastq1,fastq2. You can use this\noptiion multiple times"
  type: boolean?
  inputBinding:
    prefix: --cultivar
- id: in_bulk
  doc: "fastq or bam of mutnat bulk. If you specify\nfastq, please separate pairs\
    \ by comma,\ne.g. -b fastq1,fastq2. You can use this\noptiion multiple times"
  type: boolean?
  inputBinding:
    prefix: --bulk
- id: in_n_bulk
  doc: Number of individuals in mutant bulk.
  type: boolean?
  inputBinding:
    prefix: --N-bulk
- id: in_out
  doc: Output directory. Specified name must not
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_window
  doc: Window size (kb). [2000]
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_step
  doc: Step size (kb). [100]
  type: boolean?
  inputBinding:
    prefix: --step
- id: in_max_depth
  doc: "Maximum depth of variants which will be used.\nThis cutoff will be applied\
    \ in both of cultivar\nand bulk. [250]"
  type: boolean?
  inputBinding:
    prefix: --max-depth
- id: in_min_depth
  doc: "Minimum depth of variants which will be used.\nThis cutoff will be applied\
    \ in both of cultivar\nand bulk. [8]"
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_n_rep
  doc: "Number of replicates for simulation to make\nnull distribution. [5000]"
  type: boolean?
  inputBinding:
    prefix: --N-rep
- id: in_trim
  doc: Trim fastq using trimmomatic.
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_adapter
  doc: "FASTA of adapter sequences. This will be used\nwhen you specify \"-T\" for\
    \ trimming."
  type: boolean?
  inputBinding:
    prefix: --adapter
- id: in_trim_params
  doc: "Parameters for trimmomatic. Input parameters\nmust be separated by comma with\
    \ following\norder: phred, ILLUMINACLIP, LEADING, TRAILING,\nSLIDINGWINDOW, MINLEN.\
    \ If you want to remove\nadapters of illumina, please specify FASTA of\nthe adapter\
    \ sequences with \"--adapter\". Specified\nname will be inserted into <ADAPTER_FASTA>.\
    \ If you\ndon't specify it, adapter trimming will be skipped.\n[33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
  type: boolean?
  inputBinding:
    prefix: --trim-params
- id: in_snp_eff
  doc: "Predict causal variant using SnpEff. Please\ncheck available databases in\
    \ SnpEff."
  type: boolean?
  inputBinding:
    prefix: --snpEff
- id: in_mem
  doc: "Maximum memory per thread when bam sorted;\nsuffix K/M/G recognized. [1G]"
  type: boolean?
  inputBinding:
    prefix: --mem
- id: in_min_mq
  doc: Minimum mapping quality in mpileup. [40]
  type: boolean?
  inputBinding:
    prefix: --min-MQ
- id: in_min_bq
  doc: Minimum base quality in mpileup. [18]
  type: boolean?
  inputBinding:
    prefix: --min-BQ
- id: in_adjust_mq
  doc: "\"adjust-MQ\" in mpileup. Default parameter\nis suited for BWA. [50]"
  type: boolean?
  inputBinding:
    prefix: --adjust-MQ
- id: in_species
  doc: "Consider multiple test correction derived by\nHuang et al. (2019). Please\
    \ spesify a species name.\nWith this option. QTL-seq produces a theoretical threshold.\n\
    Currently, Arabidopsis, Cucumber, Maize, Rapeseed,\nRice, Tobacco, Tomato, Wheat,\
    \ and Yeast are supported."
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_exist_dot
  doc: -t , --threads     Number of threads. If you specify the number
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory. Specified name must not
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mutmap:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- mutmap
