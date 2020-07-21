class: CommandLineTool
id: ../../../tombo_plot_genome_locations.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: genome_locations
  doc: Genomic locations at which to plot signal. Format locations as "chrm:position[:strand]
    [chrm2:position2[:strand2] ...]" (strand not applicable for all applications)
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: control_fast_five_based_irs
  doc: Set of directories containing fast5 files for control reads, containing only
    canonical nucleotides.
  type: string[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: plot_standard_model
  doc: Add default standard model distribution to the plot.
  type: boolean
  inputBinding:
    prefix: --plot-standard-model
- id: plot_alternate_model
  doc: Add alternative model distribution to the plot.
  type: string
  inputBinding:
    prefix: --plot-alternate-model
- id: over_plot_threshold
  doc: 'Coverage level to trigger alternative plot type instead of raw signal. Default:
    50'
  type: string
  inputBinding:
    prefix: --overplot-threshold
- id: over_plot_type
  doc: 'Plot type for regions with higher coverage. Default: Downsample'
  type: string
  inputBinding:
    prefix: --overplot-type
- id: num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: string
  inputBinding:
    prefix: --num-bases
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: tombo_results.genome_locations.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls\
    \ and created within [--corrected-group] containing re-squiggle results. Default:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- genome_locations
