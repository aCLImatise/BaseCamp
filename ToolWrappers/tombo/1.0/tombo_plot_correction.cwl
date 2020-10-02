class: CommandLineTool
id: tombo_plot_correction.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_region_type
  doc: 'Region to plot within each read. Default: random'
  type: string
  inputBinding:
    prefix: --region-type
- id: in_num_reads
  doc: 'Number of reads to plot. Default: 10'
  type: long
  inputBinding:
    prefix: --num-reads
- id: in_num_obs
  doc: 'Number of observations to plot. Default: 500'
  type: long
  inputBinding:
    prefix: --num-obs
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.corrected.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
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
- plot_correction
