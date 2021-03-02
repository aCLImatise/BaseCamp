class: CommandLineTool
id: bismark_genome_preparation.cwl
inputs:
- id: in_verbose
  doc: Print verbose output for more details or debugging.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_path_to_aligner
  doc: "</../> The full path to the Bowtie 2 or HISAT2 installation folder on your\
    \ system\n(depending on which aligner/indexer you intend to use; please note that\
    \ this\nis the folder and not any executable). Unless this path is specified,\
    \ it is\nassumed that the aligner in question (Bowtie 2/HISAT2) is in the PATH."
  type: boolean?
  inputBinding:
    prefix: --path_to_aligner
- id: in_bowtie_two
  doc: "This will create bisulfite indexes for use with Bowtie 2. Recommended for\
    \ most bisulfite\nsequencing applications (Default: ON)."
  type: boolean?
  inputBinding:
    prefix: --bowtie2
- id: in_his_at_two
  doc: "This will create bisulfite indexes for use with HISAT2. At the time of writing,\
    \ this is\nstill unchartered territory, and only recommended for specialist applications\
    \ such as\nRNA-methylation analyses or SLAM-seq type applications (see also: --slam).\
    \ (Default: OFF)."
  type: boolean?
  inputBinding:
    prefix: --hisat2
- id: in_parallel
  doc: "Use several threads for each indexing process to speed up the genome preparation\
    \ step.\nRemember that the indexing is run twice in parallel already (for the\
    \ top and bottom strand\nseparately), so e.g. '--parallel 4' will use 8 threads\
    \ in total. Please also see --large-index\nfor parallel processing of VERY LARGE\
    \ genomes (e.g. the axolotl)"
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_single_fast_a
  doc: "Instruct the Bismark Indexer to write the converted genomes into\nsingle-entry\
    \ FastA files instead of making one multi-FastA file (MFA)\nper chromosome. This\
    \ might be useful if individual bisulfite converted\nchromosomes are needed (e.g.\
    \ for debugging), however it can cause a\nproblem with indexing if the number\
    \ of chromosomes is vast (this is likely\nto be in the range of several thousand\
    \ files; the operating system can\nonly handle lists up to a certain length, and\
    \ some newly assembled\ngenomes may contain 20000-500000 contigs of scaffold files\
    \ which do exceed\nthis list length limit)."
  type: boolean?
  inputBinding:
    prefix: --single_fasta
- id: in_genomic_composition
  doc: "Calculate and extract the genomic sequence composition for mono and di-nucleotides\n\
    and write the genomic composition table 'genomic_nucleotide_frequencies.txt' to\
    \ the\ngenome folder. This may be useful later on when using bam2nuc or the Bismark\
    \ option\n--nucleotide_coverage."
  type: boolean?
  inputBinding:
    prefix: --genomic_composition
- id: in_slam
  doc: "Instead of performing an in-silico bisulfite conversion, this mode transforms\
    \ T to C (forward strand),\nor A to G (reverse strand). The folder structure and\
    \ rest of the indexing process is currently\nexactly the same as for bisulfite\
    \ sequences, but this might change at some point. This means\nthat a genome prepared\
    \ in --slam mode is currently indistinguishable from a true Bisulfite Genome,\n\
    so please make sure you name the genome folder appropriately to avoid confusion."
  type: boolean?
  inputBinding:
    prefix: --slam
- id: in_large_index
  doc: "Force generated index to be 'large', even if reference has fewer than 4 billion\
    \ nucleotides. At the time\nof writing this is required for parallel processing\
    \ of VERY LARGE genomes (e.g. the axolotl)"
  type: boolean?
  inputBinding:
    prefix: --large-index
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bismark_genome_preparation
