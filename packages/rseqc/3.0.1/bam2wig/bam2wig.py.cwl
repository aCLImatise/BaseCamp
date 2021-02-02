class: CommandLineTool
id: bam2wig.py.cwl
inputs:
- id: in_input_file
  doc: "Alignment file in BAM format. BAM file must be sorted\nand indexed using samTools.\
    \ .bam and .bai files should\nbe placed in the same directory."
  type: File
  inputBinding:
    prefix: --input-file
- id: in_chrom_size
  doc: "Chromosome size file. Tab or space separated text file\nwith 2 columns: first\
    \ column is chromosome name/ID,\nsecond column is chromosome size. Chromosome\
    \ name\n(such as \"chr1\") should be consistent between this\nfile and the BAM\
    \ file."
  type: long
  inputBinding:
    prefix: --chromSize
- id: in_out_prefix
  doc: "Prefix of output wiggle files(s). One wiggle file will\nbe generated for non\
    \ strand-specific data, two wiggle\nfiles (\"Prefix_Forward.wig\" and \"Prefix_Reverse.wig\"\
    )\nwill be generated for strand-specific RNA-seq data."
  type: File
  inputBinding:
    prefix: --out-prefix
- id: in_wig_sum
  doc: "Specified wigsum. Eg: 1,000,000,000 equals to coverage\nof 10 million 100nt\
    \ reads. Ignore this option to\ndisable normalization"
  type: long
  inputBinding:
    prefix: --wigsum
- id: in_skip_multi_hits
  doc: Skip non-unique hit reads.
  type: boolean
  inputBinding:
    prefix: --skip-multi-hits
- id: in_strand
  doc: "How read(s) were stranded during sequencing. For\nexample: --strand='1++,1--,2+-,2-+'\
    \ means that this is\na pair-end, strand-specific RNA-seq data, and the\nstrand\
    \ rule is: read1 mapped to '+' => parental gene\non '+'; read1 mapped to '-' =>\
    \ parental gene on '-';\nread2 mapped to '+' => parental gene on '-'; read2\n\
    mapped to '-' => parental gene on '+'.  If you are not\nsure about the strand\
    \ rule, run 'infer_experiment.py'\ndefault=none (Not a strand specific RNA-seq\
    \ data)."
  type: long
  inputBinding:
    prefix: --strand
- id: in_mapq
  doc: "Minimum mapping quality to determine \"uniquely\nmapped\". default=30\n"
  type: long
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: "Prefix of output wiggle files(s). One wiggle file will\nbe generated for non\
    \ strand-specific data, two wiggle\nfiles (\"Prefix_Forward.wig\" and \"Prefix_Reverse.wig\"\
    )\nwill be generated for strand-specific RNA-seq data."
  type: File
  outputBinding:
    glob: $(inputs.in_out_prefix)
cwlVersion: v1.1
baseCommand:
- bam2wig.py
