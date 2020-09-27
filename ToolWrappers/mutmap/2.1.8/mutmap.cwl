class: CommandLineTool
id: mutmap.cwl
inputs:
- id: in_var_0
  doc: '[-T] [-e <DATABASE>]'
  type: long
  inputBinding:
    prefix: -n
- id: in__ref_reference
  doc: ', --ref         Reference fasta.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__cultivar_fastq
  doc: ", --cultivar    fastq or bam of cultivar. If you specify\nfastq, please separate\
    \ pairs by comma,\ne.g. -c fastq1,fastq2. You can use this\noptiion multiple times"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__bulk_fastq
  doc: ", --bulk        fastq or bam of mutnat bulk. If you specify\nfastq, please\
    \ separate pairs by comma,\ne.g. -b fastq1,fastq2. You can use this\noptiion multiple\
    \ times"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__window_kb
  doc: ', --window      Window size (kb). [2000]'
  type: boolean
  inputBinding:
    prefix: -w
- id: in__step_kb
  doc: ', --step        Step size (kb). [100]'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__maxdepth_maximum
  doc: ", --max-depth   Maximum depth of variants which will be used.\nThis cutoff\
    \ will be applied in both of cultivar\nand bulk. [250]"
  type: boolean
  inputBinding:
    prefix: -D
- id: in__mindepth_minimum
  doc: ", --min-depth   Minimum depth of variants which will be used.\nThis cutoff\
    \ will be applied in both of cultivar\nand bulk. [8]"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__nrep_number
  doc: ", --N-rep       Number of replicates for simulation to make\nnull distribution.\
    \ [5000]"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_trim
  doc: Trim fastq using trimmomatic.
  type: boolean
  inputBinding:
    prefix: --trim
- id: in__adapter_fasta
  doc: ", --adapter     FASTA of adapter sequences. This will be used\nwhen you specify\
    \ \"-T\" for trimming."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_trim_params
  doc: "Parameters for trimmomatic. Input parameters\nmust be separated by comma with\
    \ following\norder: phred, ILLUMINACLIP, LEADING, TRAILING,\nSLIDINGWINDOW, MINLEN.\
    \ If you want to remove\nadapters of illumina, please specify FASTA of\nthe adapter\
    \ sequences with \"--adapter\". Specified\nname will be inserted into <ADAPTER_FASTA>.\
    \ If you\ndon't specify it, adapter trimming will be skipped.\n[33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
  type: boolean
  inputBinding:
    prefix: --trim-params
- id: in__snpeff_predict
  doc: ", --snpEff      Predict causal variant using SnpEff. Please\ncheck available\
    \ databases in SnpEff."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_mem
  doc: "Maximum memory per thread when bam sorted;\nsuffix K/M/G recognized. [1G]"
  type: boolean
  inputBinding:
    prefix: --mem
- id: in__minmq_minimum
  doc: ', --min-MQ      Minimum mapping quality in mpileup. [40]'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__minbq_minimum
  doc: ', --min-BQ      Minimum base quality in mpileup. [18]'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in__adjustmq_mpileup
  doc: ", --adjust-MQ   \"adjust-MQ\" in mpileup. Default parameter\nis suited for\
    \ BWA. [50]"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_species
  doc: "Consider multiple test correction derived by\nHuang et al. (2019). Please\
    \ spesify a species name.\nWith this option. QTL-seq produces a theoretical threshold.\n\
    Currently, Arabidopsis, Cucumber, Maize, Rapeseed,\nRice, Tobacco, Tomato, Wheat,\
    \ and Yeast are supported."
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- mutmap
