#!/usr/bin/env cwl-runner

baseCommand:
- last-dotplot
class: CommandLineTool
cwlVersion: v1.0
id: last-dotplot
inputs:
- doc: TrueType or OpenType font file
  id: font_file
  inputBinding:
    prefix: --fontfile
  type: File
- doc: 'TrueType or OpenType font size (default: 14)'
  id: font_size
  inputBinding:
    prefix: --fontsize
  type: long
- doc: 'genome1 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end
    (default=0)'
  id: labels_1
  inputBinding:
    prefix: --labels1
  type: string
- doc: 'genome2 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end
    (default=0)'
  id: labels_2
  inputBinding:
    prefix: --labels2
  type: string
- doc: text rotation for the 1st genome (default=h)
  id: rot1
  inputBinding:
    prefix: --rot1
  type: string
- doc: text rotation for the 2nd genome (default=v)
  id: rot2
  inputBinding:
    prefix: --rot2
  type: string
- doc: read genome1 annotations from BED file
  id: bed1
  inputBinding:
    prefix: --bed1
  type: File
- doc: read genome2 annotations from BED file
  id: bed2
  inputBinding:
    prefix: --bed2
  type: File
- doc: read genome1 repeats from RepeatMasker .out or rmsk.txt file
  id: rmsk1
  inputBinding:
    prefix: --rmsk1
  type: File
- doc: read genome2 repeats from RepeatMasker .out or rmsk.txt file
  id: rmsk2
  inputBinding:
    prefix: --rmsk2
  type: File
- doc: read genome1 genes from genePred file
  id: genepred1
  inputBinding:
    prefix: --genePred1
  type: File
- doc: read genome2 genes from genePred file
  id: genepred2
  inputBinding:
    prefix: --genePred2
  type: File
- doc: color for exons (default=PaleGreen)
  id: exon_color
  inputBinding:
    prefix: --exon-color
  type: string
- doc: color for protein-coding regions (default=LimeGreen)
  id: cds_color
  inputBinding:
    prefix: --cds-color
  type: string
- doc: read genome1 unsequenced gaps from agp or gap file
  id: gap1
  inputBinding:
    prefix: --gap1
  type: File
- doc: read genome2 unsequenced gaps from agp or gap file
  id: gap2
  inputBinding:
    prefix: --gap2
  type: File
- doc: 'color for bridged gaps (default: yellow)'
  id: bridged_color
  inputBinding:
    prefix: --bridged-color
  type: string
- doc: 'color for unbridged gaps (default: orange)'
  id: un_bridged_color
  inputBinding:
    prefix: --unbridged-color
  type: string
