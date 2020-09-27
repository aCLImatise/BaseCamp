class: CommandLineTool
id: hiddenDomains.cwl
inputs:
- id: in_binwidththe_width_bin
  doc: "BIN_WIDTH\nThe width of the bin. Default is 1000bp."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_input_files_isare
  doc: "The input file(s) is(are) in BED format (the default is BAM). NOTE: All\n\
    read files have to have to same format (either BED or BAM). Use\nbinReads.pl as\
    \ a stand alone program if you have a more complicated set up."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_controlreadsa_bed_bam
  doc: "ControlReads\nA BED or BAM file that contains aligned read reads. Use the\
    \ -B option to\nspeicfy BED format. BAM format is the default."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_controlreadsbinsif_you_already
  doc: "ControlReadsBins\nIf you have already binned your control reads, you can pass\
    \ them in\nwith this option and they will be used directly."
  type: boolean
  inputBinding:
    prefix: -C
- id: in_chrominfotxtif_you_get
  doc: "ChromInfo.txt\nIf you get an out of bounds error when uploading a bed file\
    \ to the UCSC\ngenome browser, you can use this option to trim the bounds to the\
    \ size of\nthe chromosomes.\nChromInfo.txt should be a tab delimited file with\
    \ the chromosome names\nin the first column and their sizes in the second column.\
    \  Here is an\nexample ChromInfo.txt file for a genome with 3 chromosomes:\nchr1\
    \    197195432\nchr2    181748087\nchr3    159599783"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_generates_four_files
  doc: "OutputPrefix\nhiddenDomains generates four or five files with names that start\
    \ with\nOutputPrefix.\n1) \"_domains.txt\": A text file with all of the enriched\
    \ domains and\nposterior probabilities.\n2) \"_vis.bed\": A BED file for visualization,\
    \ which contains one line per\nsignificantly enriched bin - this allows for color\
    \ coding based on the\nposterior probability.\n3) \"_analysis.bed\": The second\
    \ BED file is for analysis, and this merges\nall consecutive bins with posterior\
    \ probabiliites greater than\nMIN_POSTERIOR (as specified with the -p option)\
    \ or the default value,\n0 - which merges all consecutive significat bins.\n4)\
    \ \"_treatment_bins.txt\": A file with the read counts per bin.\n5) \"_control_bins.txt\"\
    : A file with the read counts per bin."
  type: boolean
  inputBinding:
    prefix: -o
- id: in_minposteriortoss_parts_domains
  doc: "MIN_POSTERIOR\nToss out parts of domains that have posterior values that are\
    \ less\nthan MIN_POSTERIOR. You can set this to any value you want, but for\n\
    reference, domainsToBed bins according the following scale:\n>= 0.9\n0.9 > posterior\
    \ >= 0.8\n0.8 > posterior >= 0.7\n0.7 > posterior >= min posterior for significance\n\
    The default value is 0; everything is merged by default."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_minmapqthe_minimum_mapq
  doc: "MIN_MAPQ\nThe minimum MAPQ score. Default is 30."
  type: boolean
  inputBinding:
    prefix: -q
- id: in_treatmentreadsa_bed_bam
  doc: "TreatmentReads\nA BED or BAM file that contains aligned read reads. Use the\
    \ -B option to\nspeicfy BED format. BAM format is the default.\n"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hiddenDomains
