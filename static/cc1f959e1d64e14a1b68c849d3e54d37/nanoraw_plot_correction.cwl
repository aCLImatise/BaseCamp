class: CommandLineTool
id: nanoraw_plot_correction.cwl
inputs:
- id: fast5_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: region_type
  doc: 'Region to plot within each read. Choices are: random (default), start, end.'
  type: string
  inputBinding:
    prefix: --region-type
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroup
  doc: 'FAST5 subgroup (under Analyses/[corrected-group]) where individual template
    or complement read is stored. Default: BaseCalled_template'
  type: string
  inputBinding:
    prefix: --basecall-subgroup
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: Nanopore_genome_correction.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: num_reads
  doc: 'Number of reads to plot (one region per read). Default: 10'
  type: string
  inputBinding:
    prefix: --num-reads
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
- plot_correction
