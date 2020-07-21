class: CommandLineTool
id: ../../../tombo_plot_per_read.cwl
inputs:
- id: genome_locations
  doc: Genomic locations at which to plot signal. Format locations as "chrm:position[:strand]
    [chrm2:position2[:strand2] ...]" (strand not applicable for all applications)
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: per_read_statistics_filename
  doc: Binary file containing per-read statistics from statistical testing.
  type: string
  inputBinding:
    prefix: --per-read-statistics-filename
- id: genome_fast_a
  doc: FASTA file used to re-squiggle. For faster sequence access.
  type: string
  inputBinding:
    prefix: --genome-fasta
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: num_reads
  doc: 'Number of reads to plot. Default: 100'
  type: string
  inputBinding:
    prefix: --num-reads
- id: num_bases
  doc: 'Number of bases to plot/output. Default: 51'
  type: string
  inputBinding:
    prefix: --num-bases
- id: box_center
  doc: Plot a box around the central base.
  type: boolean
  inputBinding:
    prefix: --box-center
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: tombo_results.per_read_stats.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
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
- per_read
