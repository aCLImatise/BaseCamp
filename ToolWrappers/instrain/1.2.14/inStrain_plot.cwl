class: CommandLineTool
id: inStrain_plot.cwl
inputs:
- id: in_is
  doc: 'an inStrain profile object (default: None)'
  type: string?
  inputBinding:
    prefix: --IS
- id: in_pl
  doc: "[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\nPlots. Input 'all' or 'a'\
    \ to plot all\n1) Coverage and breadth vs. read mismatches\n2) Genome-wide microdiversity\
    \ metrics\n3) Read-level ANI distribution\n4) Major allele frequencies\n5) Linkage\
    \ decay\n6) Read filtering plots\n7) Scaffold inspection plot (large)\n8) Linkage\
    \ with SNP type (GENES REQUIRED)\n9) Gene histograms (GENES REQUIRED)\n10) Compare\
    \ dendrograms (RUN ON COMPARE; NOT PROFILE)\n(default: a)"
  type: boolean?
  inputBinding:
    prefix: -pl
- id: in_minimum_breadth
  doc: "Minimum breadth of coverage for genome to make it into\nplot (from 0-1). (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --minimum_breadth
- id: in_only_plot_genomes
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\nOnly plot genomes\
    \ with the names provided in this\nargument (default: None)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_plots
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inStrain
- plot
