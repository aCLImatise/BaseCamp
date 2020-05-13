class: CommandLineTool
id: nanoraw_plot_multi_correction.cwl
inputs:
- id: fast5_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template\
    \ and/or complement reads are stored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: Nanopore_genome_multiread_correction.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: genome_locations
  doc: Plot signal at specified genomic locations. Format locations as "chrm:position[:strand]
    [chrm2:position2[:strand2] ...]" (strand not applicable for all applications)
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: include_original_base_calls
  doc: Iclude original basecalls in plots.
  type: boolean
  inputBinding:
    prefix: --include-original-basecalls
- id: num_reads_per_plot
  doc: 'Number of reads to plot per genomic region. Default: 5'
  type: string
  inputBinding:
    prefix: --num-reads-per-plot
- id: num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: string
  inputBinding:
    prefix: --num-regions
- id: num_obs
  doc: 'Number of observations to plot in each region. Default: 500'
  type: string
  inputBinding:
    prefix: --num-obs
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_multi_correction
