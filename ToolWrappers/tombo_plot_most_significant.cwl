class: CommandLineTool
id: tombo_plot_most_significant.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_file_saveload_base
  doc: File to save/load base by base statistics.
  type: File
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
  type: File
  inputBinding:
    prefix: --tombo-model-filename
- id: in_alternate_model_filename
  doc: "Tombo model for alternative likelihood ratio\nsignificance testing."
  type: File
  inputBinding:
    prefix: --alternate-model-filename
- id: in_plot_standard_model
  doc: Add default standard model distribution to the plot.
  type: boolean
  inputBinding:
    prefix: --plot-standard-model
- id: in_plot_alternate_model
  doc: Add alternative model distribution to the plot.
  type: string
  inputBinding:
    prefix: --plot-alternate-model
- id: in_over_plot_threshold
  doc: "Coverage level to trigger alternative plot type\ninstead of raw signal. Default:\
    \ 50"
  type: long
  inputBinding:
    prefix: --overplot-threshold
- id: in_over_plot_type
  doc: "Plot type for regions with higher coverage. Default:\nDownsample"
  type: string
  inputBinding:
    prefix: --overplot-type
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: long
  inputBinding:
    prefix: --num-bases
- id: in_q_value_threshold
  doc: "Plot all regions below provied q-value. Overrides\n--num-regions."
  type: long
  inputBinding:
    prefix: --q-value-threshold
- id: in_statistic_order
  doc: "Order selected locations by p-values or mean\nlikelihood ratio. Default: fraction\
    \ of significant\nreads."
  type: boolean
  inputBinding:
    prefix: --statistic-order
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.significant_difference.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_sequences_filename
  doc: "File for sequences from selected regions. Sequences\nwill be stored in FASTA\
    \ format. Default: None."
  type: File
  inputBinding:
    prefix: --sequences-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long
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
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_18
  doc: '[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS [CONTROL_FAST5_BASEDIRS ...]]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- plot_most_significant
