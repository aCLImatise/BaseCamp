class: CommandLineTool
id: RepEnrich.py.cwl
inputs:
- id: in_paired_end
  doc: "Designate this option for paired-end sequencing.\nDefault FALSE change to\
    \ TRUE"
  type: string?
  inputBinding:
    prefix: --pairedend
- id: in_collapse_repeat
  doc: "Designate this option to generate a collapsed repeat\ntype. Uncollapsed output\
    \ is generated in addition to\ncollapsed repeat type. Simple_repeat is default\
    \ to\nsimplify downstream analysis. You can change the\ndefault to another repeat\
    \ name to collapse a seperate\nspecific repeat instead or if the name of\nSimple_repeat\
    \ is different for your organism. Default\nSimple_repeat"
  type: string?
  inputBinding:
    prefix: --collapserepeat
- id: in_threshold
  doc: "This option specifies overlap between repetitive\nelements and reads that\
    \ map uniquely to the genome.\nYou should change the option depending on the read\n\
    length. We felt that the the value should be close to\nhalf read length. Default\
    \ 21"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_tolerance
  doc: "This option helps to modifies the scrutiny of the\nregion sorter. Default\
    \ 500"
  type: long?
  inputBinding:
    prefix: --tolerance
- id: in_fast_q_file_two
  doc: "Enter fastqfile2 when using paired-end option. Default\nnone"
  type: long?
  inputBinding:
    prefix: --fastqfile2
- id: in_cpus
  doc: "Enter available cpus per node. The more cpus the\nfaster RepEnrich performs.\
    \ RepEnrich is designed to\nonly work on one node. Default: \"1\""
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_all_count_method
  doc: "By default the pipeline only outputs the fraction\ncount method. Consdidered\
    \ to be the best way to count\nmultimapped reads. Changing this option will include\n\
    the unique count method, a conservative count, and the\ntotal count method, a\
    \ liberal counting strategy. Our\nevaluation of simulated data indicated fraction\n\
    counting is best. Default = FALSE, change to TRUE"
  type: string?
  inputBinding:
    prefix: --allcountmethod
- id: in_is_bed
  doc: "Is the annotation file a bed file. This is also a\ncompatible format. The\
    \ file needs to be a tab\nseperated bed with optional fields. Ex. format chr\n\
    start end Name_element class family. The class and\nfamily should identical to\
    \ name_element if not\napplicable. Default FALSE change to TRUE\n"
  type: File?
  inputBinding:
    prefix: --is_bed
- id: in_annotation_file
  doc: "List RepeatMasker.org annotation file for your\norganism. The file may be\
    \ downloaded from the\nRepeatMasker.org website. Example:\n/data/annotation/hg19/hg19_repeatmasker.txt"
  type: string
  inputBinding:
    position: 0
- id: in_output_folder
  doc: 'List folder to contain results. Example: /outputfolder'
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: 'Enter prefix name for data. Example:'
  type: string
  inputBinding:
    position: 2
- id: in_hela_input_chips_eq_rep_one
  doc: setup_folder          List folder that contains the repeat element
  type: long
  inputBinding:
    position: 3
- id: in_fast_q_file
  doc: "Enter file for the fastq reads that map to multiple\nlocations. Example /data/multimap.fastq"
  type: string
  inputBinding:
    position: 0
- id: in_alignment_bam
  doc: "Enter bamfile output for reads that map uniquely.\nExample /bamfiles/old.bam"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RepEnrich.py
