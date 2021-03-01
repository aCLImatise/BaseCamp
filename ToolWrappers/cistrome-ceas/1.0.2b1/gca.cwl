class: CommandLineTool
id: gca.cwl
inputs:
- id: in_bed
  doc: BED file of ChIP regions.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_gt
  doc: "Gene annotation table. This can be a sqlite3 local db\nfile, BED file or genome\
    \ version of UCSC. The BED file\nmust have an extension of '.bed'"
  type: File?
  inputBinding:
    prefix: --gt
- id: in_span
  doc: "Span in search of ChIP regions from TSS and TTS,\nDEFAULT=3000bp"
  type: long?
  inputBinding:
    prefix: --span
- id: in_name
  doc: "Experiment name. This will be used to name the output\nfile. If an experiment\
    \ name is not given, input BED\nfile name will be used instead."
  type: File?
  inputBinding:
    prefix: --name
- id: in_gn_group
  doc: "A particular group of genes of interest. If a txt file\nwith one column of\
    \ gene names (eg RefSeq IDs in case of\nusing a refGene table) is given, gca returns\
    \ the gene-\ncentered annotation of this particular gene group."
  type: File?
  inputBinding:
    prefix: --gn-group
- id: in_g_name_two
  doc: "The gene names of --gn-group will be regarded as\n'name2.' See the schema\
    \ of the gene annotation table.\n"
  type: long?
  inputBinding:
    prefix: --gname2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gca
