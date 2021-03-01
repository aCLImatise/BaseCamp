class: CommandLineTool
id: tombo_plot_most_significant.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: File?
  inputBinding:
    prefix: --statistics-filename
- id: in_control_fast_five_based_irs
  doc: "Set of directories containing fast5 files for control\nreads, containing only\
    \ canonical nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_plot_standard_model
  doc: Add default standard model distribution to the plot.
  type: boolean?
  inputBinding:
    prefix: --plot-standard-model
- id: in_plot_alternate_model
  doc: Add alternative model distribution to the plot.
  type: string?
  inputBinding:
    prefix: --plot-alternate-model
- id: in_over_plot_threshold
  doc: "Coverage level to trigger alternative plot type\ninstead of raw signal. Default:\
    \ 50"
  type: long?
  inputBinding:
    prefix: --overplot-threshold
- id: in_over_plot_type
  doc: "Plot type for regions with higher coverage. Default:\nDownsample"
  type: string?
  inputBinding:
    prefix: --overplot-type
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long?
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: long?
  inputBinding:
    prefix: --num-bases
- id: in_coverage_dampen_counts
  doc: "COVERAGE_DAMPEN_COUNTS\nDampen fraction modified estimates for low coverage\n\
    sites. Two parameters are unmodified and modified\npseudo read counts. This is\
    \ equivalent to a beta prior\non the fraction estimate. Set to \"0 0\" to disable\n\
    dampened fraction estimation. Default: [2, 0]"
  type: long?
  inputBinding:
    prefix: --coverage-dampen-counts
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.significant_difference.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_sequences_filename
  doc: "File for sequences from selected regions. Sequences\nwill be stored in FASTA\
    \ format. Default: None."
  type: File?
  inputBinding:
    prefix: --sequences-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
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
- plot
- most_significant
