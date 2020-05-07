class: CommandLineTool
id: rmats2sashimiplot.cwl
inputs:
- id: t
  doc: Type of event from rMATS result used in the analysis.eventType is 'SE', 'A5SS',
    'A3SS', 'MXE' or 'RI'.'SE' is for skipped exon events,'A5SS' is for alternative
    5' splice site events,'A3SS' is for alternative 3' splice site events,'MXE' is
    for mutually exclusive exons events and 'RI' is for retained intron events (Only
    if using rMATS format result as event file).
  type: string
  inputBinding:
    prefix: -t
- id: e
  doc: The rMATS output event file (Only if using rMATS format result as event file).
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: The coordinate of genome region and an annotation of genes and transcripts
    in GFF3 format. Coordinateand annotation file must be colon separated(Only if
    using coordinate and annotation file).
  type: string
  inputBinding:
    prefix: -c
- id: l1
  doc: The label for first sample.
  type: string
  inputBinding:
    prefix: --l1
- id: l2
  doc: The label for second sample.
  type: string
  inputBinding:
    prefix: --l2
- id: o
  doc: The output directory.
  type: string
  inputBinding:
    prefix: -o
- id: s1
  doc: sample_1 in sam format (s1_rep1.sam[,s1_rep2.sam])
  type: string
  inputBinding:
    prefix: --s1
- id: s2
  doc: sample_2 in sam format (s2_rep1.sam[,s2_rep2.sam])
  type: string
  inputBinding:
    prefix: --s2
- id: b1
  doc: sample_1 in bam format(s1_rep1.bam[,s1_rep2.bam])
  type: string
  inputBinding:
    prefix: --b1
- id: b2
  doc: sample_2 in bam format(s2_rep1.bam[,s2_rep2.bam])
  type: string
  inputBinding:
    prefix: --b2
outputs: []
cwlVersion: v1.1
baseCommand:
- rmats2sashimiplot
