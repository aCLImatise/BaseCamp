class: CommandLineTool
id: nanoraw_plot_correction.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_region_type
  doc: "Region to plot within each read. Choices are: random\n(default), start, end."
  type: string
  inputBinding:
    prefix: --region-type
- id: in_corrected_group
  doc: "FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\n\
    RawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroup
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ or complement read is\nstored. Default: BaseCalled_template"
  type: long
  inputBinding:
    prefix: --basecall-subgroup
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_genome_correction.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_num_reads
  doc: "Number of reads to plot (one region per read).\nDefault: 10"
  type: long
  inputBinding:
    prefix: --num-reads
- id: in_num_obs
  doc: "Number of observations to plot in each region.\nDefault: 500"
  type: long
  inputBinding:
    prefix: --num-obs
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
- nanoraw
- plot_correction
