class: CommandLineTool
id: tombo_plot_motif_with_stats.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_motif
  doc: "Motif of interest at which to plot signal and\nstatsitics. Supports IUPAC\
    \ single letter codes (use T\nfor RNA)."
  type: string?
  inputBinding:
    prefix: --motif
- id: in_statistics_filename
  doc: File to save/load base by base statistics.
  type: File?
  inputBinding:
    prefix: --statistics-filename
- id: in_control_fast_five_based_irs
  doc: "Control set of directories containing fast5 files.\nThese reads should contain\
    \ only standard nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_tombo_model_filename
  doc: "Tombo model for event-less resquiggle and significance\ntesting. If no model\
    \ is provided the default DNA or\nRNA tombo model will be used."
  type: File?
  inputBinding:
    prefix: --tombo-model-filename
- id: in_over_plot_threshold
  doc: "Coverage level to trigger alternative plot type\ninstead of raw signal. Default:\
    \ 50"
  type: long?
  inputBinding:
    prefix: --overplot-threshold
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 3'
  type: long?
  inputBinding:
    prefix: --num-regions
- id: in_num_context
  doc: 'Number of context bases around motif. Default: 2'
  type: long?
  inputBinding:
    prefix: --num-context
- id: in_num_statistics
  doc: "Number of motif centered regions to include in\nstatistic distributions. Default:\
    \ 200"
  type: long?
  inputBinding:
    prefix: --num-statistics
- id: in_statistic_order
  doc: "Order selected locations by p-values or mean\nlikelihood ratio. Default: fraction\
    \ of significant\nreads."
  type: boolean?
  inputBinding:
    prefix: --statistic-order
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.motif_statistics.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- plot_motif_with_stats
