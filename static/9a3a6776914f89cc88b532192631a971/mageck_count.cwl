class: CommandLineTool
id: mageck_count.cwl
inputs:
- id: list_seq
  doc: 'A file containing the list of sgRNA names, their sequences and associated
    genes. Support file format: csv and txt. Provide an empty file for collecting
    all possible sgRNA counts.'
  type: string
  inputBinding:
    prefix: --list-seq
- id: fast_q
  doc: Sample fastq files (or fastq.gz files, or SAM/BAM files after v0.5.5), separated
    by space; use comma (,) to indicate technical replicates of the same sample. For
    example, "--fastq sample1_replicate1.fastq,sample1_replicate2.fastq sample2_replicate1.fastq,sample2_replicate2.fastq"
    indicates two samples with 2 technical replicates for each sample.
  type: string[]
  inputBinding:
    prefix: --fastq
- id: count_table
  doc: The read count table file. Only 1 file is accepted.
  type: string
  inputBinding:
    prefix: --count-table
- id: norm_method
  doc: Method for normalization, including "none" (no normalization), "median" (median
    normalization, default), "total" (normalization by total read counts), "control"
    (normalization by control sgRNAs specified by the --control-sgrna option).
  type: string
  inputBinding:
    prefix: --norm-method
- id: control_sg_rna
  doc: A list of control sgRNAs for normalization and for generating the null distribution
    of RRA.
  type: string
  inputBinding:
    prefix: --control-sgrna
- id: control_gene
  doc: A list of genes whose sgRNAs are used as control sgRNAs for normalization and
    for generating the null distribution of RRA.
  type: string
  inputBinding:
    prefix: --control-gene
- id: sample_label
  doc: Sample labels, separated by comma (,). Must be equal to the number of samples
    provided (in --fastq option). Default "sample1,sample2,...".
  type: string
  inputBinding:
    prefix: --sample-label
- id: output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: unmapped_to_file
  doc: Save unmapped reads to file, with sgRNA lengths specified by --sgrna-len option.
  type: boolean
  inputBinding:
    prefix: --unmapped-to-file
- id: keep_tmp
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: test_run
  doc: Test running. If this option is on, MAGeCK will only process the first 1M records
    for each file.
  type: boolean
  inputBinding:
    prefix: --test-run
- id: fast_q_2
  doc: Paired sample fastq files (or fastq.gz files), the order of which should be
    consistent with that in fastq option.
  type: string[]
  inputBinding:
    prefix: --fastq-2
- id: count_pair
  doc: 'Report all valid alignments per read or pair (default: False).'
  type: string
  inputBinding:
    prefix: --count-pair
- id: trim_5
  doc: Length of trimming the 5' of the reads. Users can specify multiple trimming
    lengths, separated by comma (,); for example, "7,8". Use "AUTO" to allow MAGeCK
    to automatically determine the trimming length. Default AUTO.
  type: string
  inputBinding:
    prefix: --trim-5
- id: sg_rna_len
  doc: 'Length of the sgRNA. Default 20. ATTENTION: after v0.5.3, the program will
    automatically determine the sgRNA length from library file; so only use this if
    you turn on the --unmapped-to-file option.'
  type: string
  inputBinding:
    prefix: --sgrna-len
- id: count_n
  doc: Count sgRNAs with Ns. By default, sgRNAs containing N will be discarded.
  type: boolean
  inputBinding:
    prefix: --count-n
- id: reverse_complement
  doc: Reverse complement the sequences in library for read mapping.
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: pdf_report
  doc: Generate pdf report of the fastq files.
  type: boolean
  inputBinding:
    prefix: --pdf-report
- id: day0_label
  doc: Turn on the negative selection QC and specify the label for control sample
    (usually day 0 or plasmid). For every other sample label, the negative selection
    QC will compare it with day0 sample, and estimate the degree of negative selections
    in essential genes.
  type: string
  inputBinding:
    prefix: --day0-label
- id: gmt_file
  doc: The pathway file used for QC, in GMT format. By default it will use the GMT
    file provided by MAGeCK.
  type: string
  inputBinding:
    prefix: --gmt-file
outputs: []
cwlVersion: v1.1
baseCommand:
- mageck
- count
