class: CommandLineTool
id: ../../../tombo_plot_max_difference.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: control_fast_five_based_irs
  doc: Set of directories containing fast5 files for control reads, containing only
    canonical nucleotides.
  type: string[]
  inputBinding:
    prefix: --control-fast5-basedirs
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
- id: num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: string
  inputBinding:
    prefix: --num-regions
- id: num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: string
  inputBinding:
    prefix: --num-bases
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: tombo_results.max_difference.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: sequences_filename
  doc: 'File for sequences from selected regions. Sequences will be stored in FASTA
    format. Default: None.'
  type: string
  inputBinding:
    prefix: --sequences-filename
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
- max_difference
