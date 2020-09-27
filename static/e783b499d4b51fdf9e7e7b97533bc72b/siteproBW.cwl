class: CommandLineTool
id: siteproBW.cwl
inputs:
- id: in_bw
  doc: "input bigWIG file. Multiple bigWIG files can be given\nvia -w (--bw) individually\
    \ (eg -w WIG1.bw, -w\nWIG2.bw). WARNING! multiple bigwig and bed files are\nnot\
    \ allowed."
  type: File
  inputBinding:
    prefix: --bw
- id: in_bed
  doc: "BED file of regions of interest. (eg, binding sites or\nmotif locations) Multiple\
    \ BED files can be given via\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\n\
    WARNING! multiple wig and bed files are not allowed."
  type: File
  inputBinding:
    prefix: --bed
- id: in_span
  doc: "Span from the center of each BED region in both\ndirections(+/-) (eg, [c -\
    \ span, c + span], where c is\nthe center of a region), default:1000 bp"
  type: long
  inputBinding:
    prefix: --span
- id: in_pf_res
  doc: 'Profiling resolution, default: 50 bp'
  type: long
  inputBinding:
    prefix: --pf-res
- id: in_dir
  doc: "If set, the direction (+/-) is considered in\nprofiling. If no strand info\
    \ given in the BED, this\noption is ignored."
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_dump
  doc: If set, profiles are dumped as a TXT file
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_confid
  doc: If set, it will draw 95% confidence interval for each
  type: boolean
  inputBinding:
    prefix: --confid
- id: in_label
  doc: "Labels of the wig files. If given, they are used as\nthe legends of the plot\
    \ and in naming the TXT files of\nprofile dumps; otherwise, the bigWIG file names\
    \ will\nbe used as the labels. Multiple labels can be given\nvia -l (--label)\
    \ individually (eg, -l LABEL1 -l\nLABEL2). WARNING! The number and order of the\
    \ labels\nmust be the same as the bigWIG files.\n"
  type: long
  inputBinding:
    prefix: --label
- id: in_step_dot
  doc: --name=NAME           Name of this run. If not given, the body of the bed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- siteproBW
