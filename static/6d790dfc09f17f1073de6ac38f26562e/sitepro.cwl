class: CommandLineTool
id: sitepro.cwl
inputs:
- id: in_wig
  doc: "input WIG file. WARNING: both fixedStep and\nvariableStep WIG formats are\
    \ accepted. Multiple WIG\nfiles can be given via -w (--wig) individually (eg -w\n\
    WIG1.wig, -w WIG2.wig). WARNING! multiple wig and bed\nfiles are not allowed."
  type: File?
  inputBinding:
    prefix: --wig
- id: in_bed
  doc: "BED file of regions of interest. (eg, binding sites or\nmotif locations) Multiple\
    \ BED files can be given via\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\n\
    WARNING! multiple wig and bed files are not allowed."
  type: File?
  inputBinding:
    prefix: --bed
- id: in_span
  doc: "Span from the center of each BED region in both\ndirections(+/-) (eg, [c -\
    \ span, c + span], where c is\nthe center of a region), default:1000 bp"
  type: long?
  inputBinding:
    prefix: --span
- id: in_pf_res
  doc: 'Profiling resolution, default: 50 bp'
  type: long?
  inputBinding:
    prefix: --pf-res
- id: in_dir
  doc: "If set, the direction (+/-) is considered in\nprofiling. If no strand info\
    \ given in the BED, this\noption is ignored."
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_dump
  doc: If set, profiles are dumped as a TXT file
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_name
  doc: "Name of this run. If not given, the body of the bed\nfile name will be used,"
  type: File?
  inputBinding:
    prefix: --name
- id: in_label
  doc: "Labels of the wig files. If given, they are used as\nthe legends of the plot\
    \ and in naming the TXT files of\nprofile dumps; otherwise, the WIG file names\
    \ will be\nused as the labels. Multiple labels can be given via\n-l (--label)\
    \ individually (eg, -l LABEL1 -l LABEL2).\nWARNING! The number and order of the\
    \ labels must be\nthe same as the WIG files.\n"
  type: long?
  inputBinding:
    prefix: --label
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sitepro
