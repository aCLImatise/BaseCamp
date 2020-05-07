class: CommandLineTool
id: last_dotplot.cwl
inputs:
- id: font_file
  doc: TrueType or OpenType font file
  type: File
  inputBinding:
    prefix: --fontfile
- id: font_size
  doc: 'TrueType or OpenType font size (default: 14)'
  type: long
  inputBinding:
    prefix: --fontsize
- id: labels_1
  doc: 'genome1 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end
    (default=0)'
  type: string
  inputBinding:
    prefix: --labels1
- id: labels_2
  doc: 'genome2 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end
    (default=0)'
  type: string
  inputBinding:
    prefix: --labels2
- id: rot1
  doc: text rotation for the 1st genome (default=h)
  type: string
  inputBinding:
    prefix: --rot1
- id: rot2
  doc: text rotation for the 2nd genome (default=v)
  type: string
  inputBinding:
    prefix: --rot2
- id: bed1
  doc: read genome1 annotations from BED file
  type: File
  inputBinding:
    prefix: --bed1
- id: bed2
  doc: read genome2 annotations from BED file
  type: File
  inputBinding:
    prefix: --bed2
- id: rmsk1
  doc: read genome1 repeats from RepeatMasker .out or rmsk.txt file
  type: File
  inputBinding:
    prefix: --rmsk1
- id: rmsk2
  doc: read genome2 repeats from RepeatMasker .out or rmsk.txt file
  type: File
  inputBinding:
    prefix: --rmsk2
- id: genepred1
  doc: read genome1 genes from genePred file
  type: File
  inputBinding:
    prefix: --genePred1
- id: genepred2
  doc: read genome2 genes from genePred file
  type: File
  inputBinding:
    prefix: --genePred2
- id: exon_color
  doc: color for exons (default=PaleGreen)
  type: string
  inputBinding:
    prefix: --exon-color
- id: cds_color
  doc: color for protein-coding regions (default=LimeGreen)
  type: string
  inputBinding:
    prefix: --cds-color
- id: gap1
  doc: read genome1 unsequenced gaps from agp or gap file
  type: File
  inputBinding:
    prefix: --gap1
- id: gap2
  doc: read genome2 unsequenced gaps from agp or gap file
  type: File
  inputBinding:
    prefix: --gap2
- id: bridged_color
  doc: 'color for bridged gaps (default: yellow)'
  type: string
  inputBinding:
    prefix: --bridged-color
- id: un_bridged_color
  doc: 'color for unbridged gaps (default: orange)'
  type: string
  inputBinding:
    prefix: --unbridged-color
outputs: []
cwlVersion: v1.1
baseCommand:
- last-dotplot
