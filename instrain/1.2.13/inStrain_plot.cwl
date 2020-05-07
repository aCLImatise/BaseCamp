class: CommandLineTool
id: inStrain_plot.cwl
inputs:
- id: is
  doc: 'an inStrain profile object (default: None)'
  type: string
  inputBinding:
    prefix: --IS
- id: pl
  doc: "[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]] Plots. Input 'all' or 'a'\
    \ to plot all 1) Coverage and breadth vs. read mismatches 2) Genome-wide microdiversity\
    \ metrics 3) Read-level ANI distribution 4) Major allele frequencies 5) Linkage\
    \ decay 6) Read filtering plots 7) Scaffold inspection plot (large) 8) Linkage\
    \ with SNP type (GENES REQUIRED) 9) Gene histograms (GENES REQUIRED) 10) Compare\
    \ dendrograms (RUN ON COMPARE; NOT PROFILE) (default: a)"
  type: boolean
  inputBinding:
    prefix: -pl
- id: minimum_breadth
  doc: 'Minimum breadth of coverage for genome to make it into plot (from 0-1). (default:
    0)'
  type: long
  inputBinding:
    prefix: --minimum_breadth
- id: g
  doc: '[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]] Only plot genomes
    with the names provided in this argument (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- plot
