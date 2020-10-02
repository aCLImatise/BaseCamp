class: CommandLineTool
id: tombo_plot_multi_correction.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_genome_locations
  doc: "Genomic locations at which to plot signal. Format\nlocations as \"chrm:position[:strand]\n\
    [chrm2:position2[:strand2] ...]\" (strand not\napplicable for all applications)"
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_reads
  doc: 'Number of reads to plot. Default: 5'
  type: long
  inputBinding:
    prefix: --num-reads
- id: in_num_obs
  doc: 'Number of observations to plot. Default: 500'
  type: long
  inputBinding:
    prefix: --num-obs
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.multi_corrected.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_include_original_base_calls
  doc: Include original basecalls in plots.
  type: boolean
  inputBinding:
    prefix: --include-original-basecalls
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- plot_multi_correction
