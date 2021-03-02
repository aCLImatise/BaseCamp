class: CommandLineTool
id: tombo_plot_kmer.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_upstream_bases
  doc: 'Upstream bases in k-mer. Default: 1'
  type: string?
  inputBinding:
    prefix: --upstream-bases
- id: in_downstream_bases
  doc: 'Downstream bases in k-mer. Default: 2'
  type: string?
  inputBinding:
    prefix: --downstream-bases
- id: in_read_mean
  doc: "Plot k-mer means across whole reads as opposed to\nindividual k-mer event\
    \ levels."
  type: boolean?
  inputBinding:
    prefix: --read-mean
- id: in_num_km_er_threshold
  doc: "Observations of each k-mer required to include a read\nin read level averages.\
    \ Default: 1"
  type: long?
  inputBinding:
    prefix: --num-kmer-threshold
- id: in_num_reads
  doc: 'Number of reads to plot. Default: 100'
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.kmer_distribution.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_r_data_filename
  doc: "Filename to save R data structure. Default: Don't save"
  type: File?
  inputBinding:
    prefix: --r-data-filename
- id: in_dont_plot
  doc: Don't plot result. Useful to produce only R data file.
  type: boolean?
  inputBinding:
    prefix: --dont-plot
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
- kmer
