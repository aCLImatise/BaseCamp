class: CommandLineTool
id: mageck_count.cwl
inputs:
- id: in_list_seq
  doc: "A file containing the list of sgRNA names, their\nsequences and associated\
    \ genes. Support file format:\ncsv and txt. Provide an empty file for collecting\
    \ all\npossible sgRNA counts."
  type: File?
  inputBinding:
    prefix: --list-seq
- id: in_fast_q
  doc: "Sample fastq files (or fastq.gz files, or SAM/BAM\nfiles after v0.5.5), separated\
    \ by space; use comma (,)\nto indicate technical replicates of the same sample.\n\
    For example, \"--fastq\nsample1_replicate1.fastq,sample1_replicate2.fastq\nsample2_replicate1.fastq,sample2_replicate2.fastq\"\
    \nindicates two samples with 2 technical replicates for\neach sample."
  type: string[]
  inputBinding:
    prefix: --fastq
- id: in_count_table
  doc: The read count table file. Only 1 file is accepted.
  type: File?
  inputBinding:
    prefix: --count-table
- id: in_norm_method
  doc: "Method for normalization, including \"none\" (no\nnormalization), \"median\"\
    \ (median normalization,\ndefault), \"total\" (normalization by total read\ncounts),\
    \ \"control\" (normalization by control sgRNAs\nspecified by the --control-sgrna\
    \ option)."
  type: string?
  inputBinding:
    prefix: --norm-method
- id: in_control_sg_rna
  doc: "A list of control sgRNAs for normalization and for\ngenerating the null distribution\
    \ of RRA."
  type: string?
  inputBinding:
    prefix: --control-sgrna
- id: in_control_gene
  doc: "A list of genes whose sgRNAs are used as control\nsgRNAs for normalization\
    \ and for generating the null\ndistribution of RRA."
  type: string?
  inputBinding:
    prefix: --control-gene
- id: in_sample_label
  doc: "Sample labels, separated by comma (,). Must be equal\nto the number of samples\
    \ provided (in --fastq option).\nDefault \"sample1,sample2,...\"."
  type: long?
  inputBinding:
    prefix: --sample-label
- id: in_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_unmapped_to_file
  doc: "Save unmapped reads to file, with sgRNA lengths\nspecified by --sgrna-len\
    \ option."
  type: boolean?
  inputBinding:
    prefix: --unmapped-to-file
- id: in_keep_tmp
  doc: Keep intermediate files.
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_test_run
  doc: "Test running. If this option is on, MAGeCK will only\nprocess the first 1M\
    \ records for each file."
  type: boolean?
  inputBinding:
    prefix: --test-run
- id: in_fast_q_two
  doc: "Paired sample fastq files (or fastq.gz files), the\norder of which should\
    \ be consistent with that in fastq\noption."
  type: long[]
  inputBinding:
    prefix: --fastq-2
- id: in_count_pair
  doc: "Report all valid alignments per read or pair (default:\nFalse)."
  type: string?
  inputBinding:
    prefix: --count-pair
- id: in_trim_five
  doc: "Length of trimming the 5' of the reads. Users can\nspecify multiple trimming\
    \ lengths, separated by comma\n(,); for example, \"7,8\". Use \"AUTO\" to allow\
    \ MAGeCK to\nautomatically determine the trimming length. Default\nAUTO."
  type: long?
  inputBinding:
    prefix: --trim-5
- id: in_sg_rna_len
  doc: "Length of the sgRNA. Default 20. ATTENTION: after\nv0.5.3, the program will\
    \ automatically determine the\nsgRNA length from library file; so only use this\
    \ if\nyou turn on the --unmapped-to-file option."
  type: long?
  inputBinding:
    prefix: --sgrna-len
- id: in_count_n
  doc: "Count sgRNAs with Ns. By default, sgRNAs containing N\nwill be discarded."
  type: boolean?
  inputBinding:
    prefix: --count-n
- id: in_reverse_complement
  doc: Reverse complement the sequences in library for read
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_pdf_report
  doc: Generate pdf report of the fastq files.
  type: boolean?
  inputBinding:
    prefix: --pdf-report
- id: in_day_zero_label
  doc: "Turn on the negative selection QC and specify the\nlabel for control sample\
    \ (usually day 0 or plasmid).\nFor every other sample label, the negative selection\n\
    QC will compare it with day0 sample, and estimate the\ndegree of negative selections\
    \ in essential genes."
  type: long?
  inputBinding:
    prefix: --day0-label
- id: in_gmt_file
  doc: "The pathway file used for QC, in GMT format. By\ndefault it will use the GMT\
    \ file provided by MAGeCK.\n"
  type: File?
  inputBinding:
    prefix: --gmt-file
- id: in_mapping_dot
  doc: 'Optional arguments for quality controls:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- mageck
- count
