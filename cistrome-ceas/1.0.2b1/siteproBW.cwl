class: CommandLineTool
id: siteproBW.cwl
inputs:
- id: bw
  doc: input bigWIG file. Multiple bigWIG files can be given via -w (--bw) individually
    (eg -w WIG1.bw, -w WIG2.bw). WARNING! multiple bigwig and bed files are not allowed.
  type: string
  inputBinding:
    prefix: --bw
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
- id: confid
  doc: If set, it will draw 95% confidence interval for each step.
  type: boolean
  inputBinding:
    prefix: --confid
- id: name
  doc: Name of this run. If not given, the body of the bed file name will be used,
  type: string
  inputBinding:
    prefix: --name
- id: label
  doc: Labels of the wig files. If given, they are used as the legends of the plot
    and in naming the TXT files of profile dumps; otherwise, the bigWIG file names
    will be used as the labels. Multiple labels can be given via -l (--label) individually
    (eg, -l LABEL1 -l LABEL2). WARNING! The number and order of the labels must be
    the same as the bigWIG files.
  type: string
  inputBinding:
    prefix: --label
outputs: []
cwlVersion: v1.1
baseCommand:
- siteproBW
