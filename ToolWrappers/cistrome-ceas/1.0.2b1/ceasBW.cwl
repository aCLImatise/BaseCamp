class: CommandLineTool
id: ceasBW.cwl
inputs:
- id: in_bed
  doc: BED file of ChIP regions.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bigwig
  doc: "BIGWIG file for either wig profiling or genome\nbackground annotation. WARNING:\
    \ --bg flag must be set\nfor genome background re-annotation."
  type: File?
  inputBinding:
    prefix: --bigwig
- id: in_e_bed
  doc: "BED file of extra regions of interest (eg, non-coding\nregions)"
  type: File?
  inputBinding:
    prefix: --ebed
- id: in_gt
  doc: "Gene annotation table (eg, a refGene table in sqlite3\ndb format provided\
    \ through the CEAS web,\nhttp://liulab.dfci.harvard.edu/CEAS/download.html)."
  type: long?
  inputBinding:
    prefix: --gt
- id: in_name
  doc: "Experiment name. This will be used to name the output\nfiles. If an experiment\
    \ name is not given, the stem of\nthe input BED file name will be used instead\
    \ (eg, if\n'peaks.bed', 'peaks' will be used as a name.)"
  type: File?
  inputBinding:
    prefix: --name
- id: in_sizes
  doc: "Promoter (also dowsntream) sizes for ChIP region\nannotation. Comma-separated\
    \ three values or a single\nvalue can be given. If a single value is given, it\n\
    will be segmented into three equal fractions (ie, 3000\nis equivalent to 1000,2000,3000),\
    \ DEFAULT:\n1000,2000,3000. WARNING: Values > 10000bp are\nautomatically set to\
    \ 10000bp."
  type: long?
  inputBinding:
    prefix: --sizes
- id: in_bi_sizes
  doc: "Bidirectional-promoter sizes for ChIP region\nannotation Comma-separated two\
    \ values or a single\nvalue can be given. If a single value is given, it\nwill\
    \ be segmented into two equal fractions (ie, 5000\nis equivalent to 2500,5000)\
    \ DEFAULT: 2500,5000bp.\nWARNING: Values > 20000bp are automatically set to\n\
    20000bp."
  type: long?
  inputBinding:
    prefix: --bisizes
- id: in_bg
  doc: "Run genome BG annotation again. WARNING: This flag is\neffective only if a\
    \ WIG file is given through -w\n(--wig). Otherwise, ignored."
  type: boolean?
  inputBinding:
    prefix: --bg
- id: in_span
  doc: "Span from TSS and TTS in the gene-centered annotation.\nChIP regions within\
    \ this range from TSS and TTS are\nconsidered when calculating the coverage rates\
    \ in\npromoter and downstream, DEFAULT=3000bp"
  type: long?
  inputBinding:
    prefix: --span
- id: in_pf_res
  doc: "Wig profiling resolution, DEFAULT: 50bp. WARNING:\nValue smaller than the\
    \ wig interval (resolution) may\ncause aliasing error."
  type: long?
  inputBinding:
    prefix: --pf-res
- id: in_rel_dist
  doc: "Relative distance to TSS/TTS in wig profiling,\nDEFAULT: 3000bp"
  type: long?
  inputBinding:
    prefix: --rel-dist
- id: in_gn_groups
  doc: "Gene-groups of particular interest in wig profiling.\nEach gene group file\
    \ must have gene names in the 1st\ncolumn. The file names are separated by commas\
    \ w/ no\nspace (eg, --gn-groups=top10.txt,bottom10.txt)"
  type: File?
  inputBinding:
    prefix: --gn-groups
- id: in_gn_group_names
  doc: "The names of the gene groups in --gn-groups. The gene\ngroup names are separated\
    \ by commas. (eg, --gn-group-\nnames='top 10%,bottom 10%'). These group names\
    \ appear\nin the legends of the wig profiling plots. If no group\nnames given,\
    \ the groups are represented as 'Group 1,\nGroup2,...Group n'."
  type: long?
  inputBinding:
    prefix: --gn-group-names
- id: in_g_name_two
  doc: "Whether or not use the 'name2' column of the gene\nannotation table when reading\
    \ the gene IDs in the\nfiles given through --gn-groups. This flag is\nmeaningful\
    \ only with --gn-groups."
  type: boolean?
  inputBinding:
    prefix: --gname2
- id: in_dump
  doc: "Whether to save the raw profiles of near TSS, TTS, and\ngene body. The file\
    \ names have a suffix of 'TSS',\n'TTS', and 'gene' after the name."
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_length
  doc: "file contains lenth information of every chroms\n"
  type: long?
  inputBinding:
    prefix: --length
- id: in_input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ceasBW
