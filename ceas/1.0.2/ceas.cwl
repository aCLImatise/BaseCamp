class: CommandLineTool
id: ceas.cwl
inputs:
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: BED file of ChIP regions.
  type: string
  inputBinding:
    prefix: --bed
- id: wig
  doc: 'WIG file for either wig profiling or genome background annotation. WARNING:
    --bg flag must be set for genome background re-annotation.'
  type: string
  inputBinding:
    prefix: --wig
- id: e_bed
  doc: BED file of extra regions of interest (eg, non-coding regions)
  type: string
  inputBinding:
    prefix: --ebed
- id: gt
  doc: Gene annotation table (eg, a refGene table in sqlite3 db format provided through
    the CEAS web, http://liulab.dfci.harvard.edu/CEAS/download.html).
  type: string
  inputBinding:
    prefix: --gt
- id: name
  doc: Experiment name. This will be used to name the output files. If an experiment
    name is not given, the stem of the input BED file name will be used instead (eg,
    if 'peaks.bed', 'peaks' will be used as a name.)
  type: string
  inputBinding:
    prefix: --name
- id: sizes
  doc: 'Promoter (also dowsntream) sizes for ChIP region annotation. Comma-separated
    three values or a single value can be given. If a single value is given, it will
    be segmented into three equal fractions (ie, 3000 is equivalent to 1000,2000,3000),
    DEFAULT: 1000,2000,3000. WARNING: Values > 10000bp are automatically set to 10000bp.'
  type: long
  inputBinding:
    prefix: --sizes
- id: bi_sizes
  doc: 'Bidirectional-promoter sizes for ChIP region annotation Comma-separated two
    values or a single value can be given. If a single value is given, it will be
    segmented into two equal fractions (ie, 5000 is equivalent to 2500,5000) DEFAULT:
    2500,5000bp. WARNING: Values > 20000bp are automatically set to 20000bp.'
  type: string
  inputBinding:
    prefix: --bisizes
- id: bg
  doc: 'Run genome BG annotation again. WARNING: This flag is effective only if a
    WIG file is given through -w (--wig). Otherwise, ignored.'
  type: boolean
  inputBinding:
    prefix: --bg
- id: span
  doc: Span from TSS and TTS in the gene-centered annotation. ChIP regions within
    this range from TSS and TTS are considered when calculating the coverage rates
    in promoter and downstream, DEFAULT=3000bp
  type: string
  inputBinding:
    prefix: --span
- id: pf_res
  doc: 'Wig profiling resolution, DEFAULT: 50bp. WARNING: Value smaller than the wig
    interval (resolution) may cause aliasing error.'
  type: string
  inputBinding:
    prefix: --pf-res
- id: rel_dist
  doc: 'Relative distance to TSS/TTS in wig profiling, DEFAULT: 3000bp'
  type: string
  inputBinding:
    prefix: --rel-dist
- id: gn_groups
  doc: Gene-groups of particular interest in wig profiling. Each gene group file must
    have gene names in the 1st column. The file names are separated by commas w/ no
    space (eg, --gn-groups=top10.txt,bottom10.txt)
  type: string
  inputBinding:
    prefix: --gn-groups
- id: gn_group_names
  doc: The names of the gene groups in --gn-groups. The gene group names are separated
    by commas. (eg, --gn-group- names='top 10%,bottom 10%'). These group names appear
    in the legends of the wig profiling plots. If no group names given, the groups
    are represented as 'Group 1, Group2,...Group n'.
  type: string
  inputBinding:
    prefix: --gn-group-names
- id: gname2
  doc: Whether or not use the 'name2' column of the gene annotation table when reading
    the gene IDs in the files given through --gn-groups. This flag is meaningful only
    with --gn-groups.
  type: boolean
  inputBinding:
    prefix: --gname2
- id: dump
  doc: Whether to save the raw profiles of near TSS, TTS, and gene body. The file
    names have a suffix of 'TSS', 'TTS', and 'gene' after the name.
  type: boolean
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- ceas
