class: CommandLineTool
id: sitepro.cwl
inputs:
- id: wig
  doc: 'input WIG file. WARNING: both fixedStep and variableStep WIG formats are accepted.
    Multiple WIG files can be given via -w (--wig) individually (eg -w WIG1.wig, -w
    WIG2.wig). WARNING! multiple wig and bed files are not allowed.'
  type: string
  inputBinding:
    prefix: --wig
- id: bed
  doc: BED file of regions of interest. (eg, binding sites or motif locations) Multiple
    BED files can be given via -b (--bed) individually (eg -b BED1.bed -b BED2.bed).
    WARNING! multiple wig and bed files are not allowed.
  type: string
  inputBinding:
    prefix: --bed
- id: span
  doc: Span from the center of each BED region in both directions(+/-) (eg, [c - span,
    c + span], where c is the center of a region), default:1000 bp
  type: string
  inputBinding:
    prefix: --span
- id: pf_res
  doc: 'Profiling resolution, default: 50 bp'
  type: string
  inputBinding:
    prefix: --pf-res
- id: dir
  doc: If set, the direction (+/-) is considered in profiling. If no strand info given
    in the BED, this option is ignored.
  type: boolean
  inputBinding:
    prefix: --dir
- id: dump
  doc: If set, profiles are dumped as a TXT file
  type: boolean
  inputBinding:
    prefix: --dump
- id: name
  doc: Name of this run. If not given, the body of the bed file name will be used,
  type: string
  inputBinding:
    prefix: --name
- id: label
  doc: Labels of the wig files. If given, they are used as the legends of the plot
    and in naming the TXT files of profile dumps; otherwise, the WIG file names will
    be used as the labels. Multiple labels can be given via -l (--label) individually
    (eg, -l LABEL1 -l LABEL2). WARNING! The number and order of the labels must be
    the same as the WIG files.
  type: string
  inputBinding:
    prefix: --label
outputs: []
cwlVersion: v1.1
baseCommand:
- sitepro
