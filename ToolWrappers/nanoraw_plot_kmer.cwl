class: CommandLineTool
id: nanoraw_plot_kmer.cwl
inputs:
- id: in_base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ and/or complement reads are\nstored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_two_d
  doc: "Input contains 2D reads. Equivalent to `--basecall-\nsubgroups BaseCalled_template\
    \ BaseCalled_complement`"
  type: boolean
  inputBinding:
    prefix: --2d
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_upstream_bases
  doc: "Upstream bases in k-mer. Should be one of {0,1,2,3}.\nDefault: 1"
  type: string
  inputBinding:
    prefix: --upstream-bases
- id: in_downstream_bases
  doc: "Downstream bases in k-mer. Should be one of {0,1,2,3}.\nDefault: 2"
  type: string
  inputBinding:
    prefix: --downstream-bases
- id: in_read_mean
  doc: Plot kmer event means across reads as opposed to each
  type: boolean
  inputBinding:
    prefix: --read-mean
- id: in_corrected_group
  doc: "FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\n\
    RawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_kmer_distribution.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_num_reads
  doc: "Number of reads to plot (one region per read).\nDefault: 500"
  type: long
  inputBinding:
    prefix: --num-reads
- id: in_r_data_filename
  doc: "Filename to save R data structure. Defualt: Don't save"
  type: File
  inputBinding:
    prefix: --r-data-filename
- id: in_dont_plot
  doc: "Don't actually plot the result. Useful when you only\nwant the R data file."
  type: boolean
  inputBinding:
    prefix: --dont-plot
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_event_dot
  doc: --num-kmer-threshold NUM_KMER_THRESHOLD
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_kmer
