class: CommandLineTool
id: nanoraw_plot_kmer.cwl
inputs:
- id: fast5_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: upstream_bases
  doc: '{0,1,2,3} Upstream bases in k-mer. Should be one of {0,1,2,3}. Default: 1'
  type: boolean
  inputBinding:
    prefix: --upstream-bases
- id: downstream_bases
  doc: '{0,1,2,3} Downstream bases in k-mer. Should be one of {0,1,2,3}. Default:
    2'
  type: boolean
  inputBinding:
    prefix: --downstream-bases
- id: read_mean
  doc: Plot kmer event means across reads as opposed to each event.
  type: boolean
  inputBinding:
    prefix: --read-mean
- id: num_km_er_threshold
  doc: 'Number of each kmer required to include a read in read level averages. Default:
    4'
  type: string
  inputBinding:
    prefix: --num-kmer-threshold
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: Nanopore_kmer_distribution.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: num_reads
  doc: 'Number of reads to plot (one region per read). Default: 500'
  type: string
  inputBinding:
    prefix: --num-reads
- id: r_data_filename
  doc: "Filename to save R data structure. Defualt: Don't save"
  type: string
  inputBinding:
    prefix: --r-data-filename
- id: dont_plot
  doc: Don't actually plot the result. Useful when you only want the R data file.
  type: boolean
  inputBinding:
    prefix: --dont-plot
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_kmer
