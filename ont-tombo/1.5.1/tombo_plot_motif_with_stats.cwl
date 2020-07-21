class: CommandLineTool
id: ../../../tombo_plot_motif_with_stats.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: motif
  doc: Motif of interest at which to plot signal and statsitics. Supports IUPAC single
    letter codes (use T for RNA).
  type: string
  inputBinding:
    prefix: --motif
- id: statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: string
  inputBinding:
    prefix: --statistics-filename
- id: genome_fast_a
  doc: FASTA file used to re-squiggle. For faster sequence access.
  type: string
  inputBinding:
    prefix: --genome-fasta
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
- id: num_regions
  doc: 'Number of regions to plot. Default: 3'
  type: string
  inputBinding:
    prefix: --num-regions
- id: num_context
  doc: 'Number of context bases around motif. Default: 5'
  type: string
  inputBinding:
    prefix: --num-context
- id: num_statistics
  doc: 'Number of motif centered regions to include in statistic distributions. Default:
    200'
  type: string
  inputBinding:
    prefix: --num-statistics
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: tombo_results.motif_statistics.pdf'
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
- motif_with_stats
