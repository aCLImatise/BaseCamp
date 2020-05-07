class: CommandLineTool
id: gca.cwl
inputs:
- id: bed
  doc: BED file of ChIP regions.
  type: string
  inputBinding:
    prefix: --bed
- id: gt
  doc: Gene annotation table. This can be a sqlite3 local db file, BED file or genome
    version of UCSC. The BED file must have an extension of '.bed'
  type: string
  inputBinding:
    prefix: --gt
- id: span
  doc: Span in search of ChIP regions from TSS and TTS, DEFAULT=3000bp
  type: string
  inputBinding:
    prefix: --span
- id: name
  doc: Experiment name. This will be used to name the output file. If an experiment
    name is not given, input BED file name will be used instead.
  type: string
  inputBinding:
    prefix: --name
- id: gn_group
  doc: A particular group of genes of interest. If a txt file with one column of gene
    names (eg RefSeq IDs in case of using a refGene table) is given, gca returns the
    gene- centered annotation of this particular gene group.
  type: string
  inputBinding:
    prefix: --gn-group
- id: gname2
  doc: The gene names of --gn-group will be regarded as 'name2.' See the schema of
    the gene annotation table.
  type: string
  inputBinding:
    prefix: --gname2
outputs: []
cwlVersion: v1.1
baseCommand:
- gca
